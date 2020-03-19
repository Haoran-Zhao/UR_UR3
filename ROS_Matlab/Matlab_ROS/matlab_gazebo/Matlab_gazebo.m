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
posSub = rossubscriber('/cur_pos');
receive(posSub);
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
    disp(msg);
    X_pos = [X_pos, msg.X];
    Y_pos = [Y_pos, msg.Y];
    Z_pos = [Z_pos, msg.Z];
    
    set(scatplot, 'XData', (X_pos-X_pos(1))*1000, 'YData', (Y_pos-Y_pos(1))*1000, 'ZData', (Z_pos-Z_pos(1))*1000)
    drawnow
end

function subcallback(msg)
    X = msg.CX;
    Y = msg.CY;
    Z = msg.CZ;
end
