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
posSub = rossubscriber('/cur_pos',@subcallback);
initSub = rossubscriber('/init_pos',@subcallback1);
[goalPub, goalMsg] = rospublisher('/goal_pos','geometry_msgs/Point');

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

start_from_orgin = 1;
%% Loop
while(1)
    %% sub msg
    msg_init = initSub.LatestMessage;
    if msg_init==1
       X_pos = [];
       Y_pos = [];
       Z_pos = [];
       t=1;
       start_from_orgin=1;
       continue
    end
    
    msg = posSub.LatestMessage;
    if isempty(X_pos)
        X_pos = [X_pos, msg.X];
        Y_pos = [Y_pos, msg.Y];
        Z_pos = [Z_pos, msg.Z];
    else
        if msg.X ~= X_pos(end) && msg.Y ~= Y_pos(end) && msg.Z~=Z_pos(end)
            X_pos = [X_pos, msg.X];
            Y_pos = [Y_pos, msg.Y];
            Z_pos = [Z_pos, msg.Z];
        end
    end
    
    if ~isempty(X_pos)
        goalMsg.X = Traj(t,1)/1000+X_pos(1);
        goalMsg.Y = Traj(t,2)/1000+Y_pos(1);
        goalMsg.Z = Traj(t,3)/1000+Z_pos(1);
        send(goalPub,goalMsg);
    end
    
    set(h2, 'XData', Traj(t,1), 'YData', Traj(t,2), 'ZData', Traj(t,3));
    
    if ~isempty(X_pos)
    set(h1, 'XData', (X_pos-X_pos(1))*1000, 'YData', (Y_pos-Y_pos(1))*1000, 'ZData', (Z_pos-Z_pos(1))*1000, 'cdata', jet(length(X_pos)))
    drawnow
    end
    
    if start_from_orgin && length(X_pos)==1
        start_from_orgin = 0;
        t = t+1;
        waitfor(rosrate(5));
    elseif ~start_from_orgin
        t = max(1,mod(t + 1,122));
        waitfor(rosrate(2));
    else
        waitfor(rosrate(2));
    end
end

function subcallback(~, msg)
    fprintf('X: %f Y: %f, Z: %f \n',msg.X,msg.Y,msg.Z);
end
function subcallback1(~, msg)
    fprintf('init_pos: %d \n',msg.Data);
end
