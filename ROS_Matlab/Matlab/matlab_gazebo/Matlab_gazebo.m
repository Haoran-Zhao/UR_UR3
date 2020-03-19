%% SetUp
% Connect to ROS master
clear
close all

setenv('ROS_MASTER_URI','http://192.168.1.2:11311')
setenv('ROS_IP','192.168.1.4')

rosshutdown;
IP = '192.168.1.2';
rosinit(IP,11311);

%Creat ROS subscribers and Publishers
posSub = rossubscriber('/cur_pos',@subcallback);
[goalPub, goalMsg] = rospublisher('/goal_pos','geometry_msgs/Point');

%% initialize plot and variables
X_pos = [];
Y_pos = [];
Z_pos = [];
init_pos = 0;
figure(1)
scatplot = scatter3(X_pos,Y_pos,Z_pos);
axis([-150 150 -150 150 -150 150])
%% Loop
while(1)
    %% sub msg
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
    set(scatplot, 'XData', (X_pos-X_pos(1))*1000, 'YData', (Y_pos-Y_pos(1))*1000, 'ZData', (Z_pos-Z_pos(1))*1000, 'cdata', jet(length(X_pos)))
    drawnow
    end
end

function subcallback(~, msg)
    fprintf('X: %f Y: %f, Z: %f \n',msg.X,msg.Y,msg.Z);
end
