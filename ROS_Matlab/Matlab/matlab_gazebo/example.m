%% SETUP
% Start or connect to ROS master
rosshutdown;

setenv('ROS_MASTER_URI','http://192.168.1.2:11311')
setenv('ROS_IP','192.168.1.4')

ipAddr = '192.168.1.2';
rosinit(ipAddr,11311)

% Create ROS subscribers
mySub = rossubscriber('/counter','std_msgs/Int32');

% Create ROS publishers
[myPub,pubMsg] = rospublisher('/counter_m','std_msgs/Int32');

% Start visualization
close all
myViz = axes;
title(myViz,'Count')
xlabel(myViz,'Time [s]')
hold(myViz,'on') 

%% CONTROL LOOP
% Start while-loop, which runs indefinitely and as quickly as possible.
tic
currentTime = 0;
while(1)
    %% 1: SENSE
    % Get latest data from ROS subscribers
    receivedMsg = mySub.LatestMessage;
    if isempty(receivedMsg)
       receivedData = 0; % If message is empty, assign random number
    else
       receivedData = receivedMsg.Data;
    end

    %% 3: CONTROL
    % Package and send control outputs as ROS messages
    countOutput = int32(receivedData/10);
    pubMsg.Data = countOutput;
    send(myPub,pubMsg);
    
    %% 4: VISUALIZE
    % (Optional) Visualize data as the algorithm is running
    currentTime = toc;
    plot(myViz,currentTime,receivedData,'bo','MarkerSize',5)
    drawnow

    % (Optional) Pause execution to add delay between iterations
    pause(0.1)
    
% End while-loop
end
