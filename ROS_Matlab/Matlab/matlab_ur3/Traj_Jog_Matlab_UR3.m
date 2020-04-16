%% SetUp
% Connect to ROS master
clear
close all

setenv('ROS_MASTER_URI','http://192.168.1.2:11311')
setenv('ROS_IP','192.168.1.3')

rosshutdown;
IP = '192.168.1.2';
rosinit(IP,11311);

%Creat ROS subscribers and Publishers
posSub = rossubscriber('/cur_pos');
trackSub = rossubscriber('/track_flag');
initSub = rossubscriber('/init_flg');
[goalPub, goalMsg] = rospublisher('/goal_pos','geometry_msgs/Twist');

%% initialize variables, trajectory and plot
X_pos = [];
Y_pos = [];
Z_pos = [];

figure(1)
axis([-150 150 -150 150 -150 150])

r = 70; %[mm]
theta = 0:pi/60:2*pi;
X = zeros(121,1);
Y = zeros(121,1);
Z = zeros(121,1);
pitch = pi/6;
R_y = [cos(pitch) 0 sin(pitch); 0 1 0; -sin(pitch) 0 cos(pitch)];

Traj = zeros(121,3);

for i=1:121
    Y(i) = r*cos(theta(i));
    Z(i) = r*sin(theta(i));
end

Traj(:,1) = X(:);
Traj(:,2) = Y(:);
Traj(:,3) = Z(:);

Traj = (R_y*Traj')';

figure(1)
plot3(Traj(:,1),Traj(:,2),Traj(:,3))
xlabel('x')
ylabel('y')
zlabel('z')
grid on
axis([-100 100 -100 100 -100 100])
hold on 
h1 = scatter3(X_pos,Y_pos,Z_pos);
h2 = scatter3(NaN,NaN,NaN,'d');
t = 1;

start_track = 0;
msg_track_hist = ones(1,5)*2;

error_linear = [0,0,0];
last_out = 0;
dt = 0.1;
%% Loop
while(1)
    %% sub msg
    msg_track = trackSub.LatestMessage;
    if ~isempty(msg_track)
        msg_track_hist(1,1:4) = msg_track_hist(1,2:5);
        msg_track_hist(1,5) = msg_track.Data;
    else
        msg_track_hist(1,1:4) = msg_track_hist(1,2:5);
        msg_track_hist(1,5) = 0; 
    end
    start_flag = check_start(msg_track_hist);

    if start_flag ==1
        start_track = 1;
    elseif start_flag ==0
        start_track = 0;
    end
    
    msg_init = initSub.LatestMessage;
    if ~isempty(msg_init) && msg_init.Data==1
       fprintf ('initializing....\n')
       X_pos = [];
       Y_pos = [];
       Z_pos = [];
       t=1;
       start_track=0;
       continue
    end
    
    msg = posSub.LatestMessage;
    cur_X = round(msg.X,4);
    cur_Y = round(msg.Y,4);
    cur_Z = round(msg.Z,4);
    cur_linear = [cur_X,cur_Y,cur_Z];
    
    X_pos = [X_pos, cur_X];
    Y_pos = [Y_pos, cur_Y];
    Z_pos = [Z_pos, cur_Z];

    if length(X_pos)>2 && X_pos(end) == X_pos(end-1) && Y_pos(end-1) == Y_pos(end) && Z_pos(end-1) ==Z_pos(end)
        X_pos = X_pos(1:end-1);
        Y_pos = Y_pos(1:end-1);
        Z_pos = Z_pos(1:end-1);
    end
    
    if start_track==1 && ~isempty(X_pos)
        goal_linear_X = Traj(t,1)/1000+X_pos(1);
        goal_linear_Y = Traj(t,2)/1000+Y_pos(1);
        goal_linear_Z = Traj(t,3)/1000+Z_pos(1);
        goal_linear = [goal_linear_X, goal_linear_Y, goal_linear_Z];
        [goalMsg.Linear.X, goalMsg.Linear.Y, goalMsg.Linear.Z,error_linear,last_out] = Linear_PID(goal_linear, cur_linear, 2.5, 0, 0.01, error_linear, last_out, dt);
        fprintf('linear_X: %f linear_Y: %f, linear_Z: %f \n',goalMsg.Linear.X, goalMsg.Linear.Y, goalMsg.Linear.Z);
%         goal_angular_X = 0;
%         goal_angular_Y = 0;
%         goal_angular_Z = 0;
%         [goalMsg.Angular.X, goalMsg.Angular.Y, goalMsg.Angular.Z, error_angualr] = Angular_PID(goal_angular_X,goal_angular_Y,goal_angular_Z, Kp,Ki,Kd, error_angular);
        send(goalPub,goalMsg);
    end
    
    set(h2, 'XData', Traj(t,1), 'YData', Traj(t,2), 'ZData', Traj(t,3));
    
    if ~isempty(X_pos)
%     set(h1, 'XData', (X_pos(end)-X_pos(1))*1000, 'YData', (Y_pos(end)-Y_pos(1))*1000, 'ZData', (Z_pos(end)-Z_pos(1))*1000)
    set(h1, 'XData', (X_pos-X_pos(1))*1000, 'YData', (Y_pos-Y_pos(1))*1000, 'ZData', (Z_pos-Z_pos(1))*1000, 'cData', jet(length(X_pos)))
    drawnow
    end
    

    if start_track == 1 && norm(goal_linear - cur_linear)*1000 < 1
        t = max(1, mod(t+1,122));
%         t=1;
    end    
end

function subcallback(~, msg)
    fprintf('X: %f Y: %f, Z: %f \n',round(msg.X,3)*1000,round(msg.Y,3)*1000,round(msg.Z,3)*1000);
end

function subcallback1(~, msg)
    fprintf('msg: %d \n',msg.Data);
end

function [flag] = check_start(hist_matrix)
    n = length(hist_matrix);
    count_start = 0;
    count_halt = 0;
    flag = -1;
    for i = 1:n
        if hist_matrix(i)==-2
            count_start = count_start +1;
        elseif hist_matrix(i) == 2
            count_halt = count_halt+1;
        end
    end    
    
    if count_start == n
        flag = 1;
    elseif count_halt == n
        flag = 0;
    end
end

function [output] = scaler(input)
    if input >= 1
        output =1;
    elseif input <=-1
        output = -1;
    else
        output = input;
    end
end

function [linear_X, linear_Y, linear_Z, error_out,last_out] = Linear_PID(goal, cur, Kp, Ki, Kd, error_in, last_in, dt)
    e = goal - cur;
    error_out = error_in + e .*1000 .* dt;
    last_out = e;
    output = Kp .* e .*1000 + Ki.* error_out - Kd/dt .* (e - last_in).*1000;
    
    linear_X = scaler(output(1)/10);
    linear_Y = scaler(output(2)/10);
    linear_Z = scaler(output(3)/10);
    
end
