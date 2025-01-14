clear all
%% system parameter setting
% specifiy system parameters
% specify the transmit and receive channels available for system
% for Vantage 64LE, it's 64
Resource.Parameter.numTransmit = 128;
Resource.Parameter.numRcvChannel = 128;

% if the Vantage Unit is a 256 channel system, need to specify following
% Resource.parameter.connector = 1; % (defaults  = 1) if using 1 connector
% it's still 128, even the source is 256

% To test and initially run the code, run in simulation mode
Resource.Parameter.simulateMode = 1;

% To run simulate mode, a media model to generate ultrasound echoes needs 
% to be define.
% The transducer elements are located along the x-axis
% The scan depth dimension is along z-axis.
% The y-axis represents the elevational dimension.

% Specify media point
Media.MP(1,:) = [0,0,100,1.0]; % [x, y, z, reflectiveity(wavelength from the center of transducer)]

%% Transducer definition
% Specify Trans structure array
Trans.name = 'L11-4v'; % Transducer name
Trans.frequency = 6.25; % No needed if using default frequency [MHz]
% To set unit of length to wavelength
% Trans.units = 'wavelengths';
Trans = computeTrans(Trans); % L11-4v transducer is 'known' transducer.

% specify Resource buffer for RF data
Resource.RcvBuffer(1).datatype = 'int16';
Resource.RcvBuffer(1).rowsPerFrame = 2048;% numbers of RF data per channel can be acquired (defual 4 times the transducer center frequency)
Resource.RcvBuffer(1).colsPerFrame = 128; % number of recieve channels
Resource.RcvBuffer(1).numFrames = 1; % minimu size is 1 frame

%% Transmit waveform definition

% specify transmit waveform structure
TW(1).type = 'Parametric';
TW(1).Parameters = [6.25,0.67,2,1]; % A, B, C, D 
% A: frequency of the transmite pulse and set the halse cycle period of our waveform.
% B: the amount of time that the transmit drivers are active in the half cycle period in range(0, 1)to  control transmit power.
% C: the number of half cycles in transmit waveform, 2 provide single cycle burst.
% D: the initial polarity of the first half sysle, 1 indicating positive.

%% TX object
% Transmit action
TX(1).waveform = 1; % USE 1ST TX structure
TX(1).focus = 0; % use plane wave excitation, where all elements transmit in same time
TX(1).Apod = ones(1, Trans.numelements); % specify which transmitters are active, and to specify a transmit apodization function
TX(1).Delay = computeTXDelays(TX(1));

%% Time Gain Control (TGC) Recieve echo signals from plane wave transmit and store in local memory
TGC(1).CntrlPts = [500,590,650,710,770,830,890,950]; % gain value range in [0, 1023]
TGC(1).rangeMax = 200;
TGC(1).Waveform = computTGCWaveform(TGC);

%% Recieve object definition
%Specify Recieve structure array
Recieve(1).Apod = ones(1, 128);
% for a vantage 64 or 64LE, use these alternativa statements for
% Recieve.apod
%Recieve(1).Apod = ones(1,64);
%Recieve(1).Apod = [ones(1,64) zeros(1,64)]; % Vantage 64LE

Recieve(1).startDepth = 0;
Recieve(1).endDepth = 200;
Recieve(1).TGC = 1; % use first TGC waveform defined above
Recieve(1).mode = 0;
Recieve(1).bufnum = 1;
Recieve(1).framenum = 1;
Recieve(1).acqNum = 1;
Recieve(1).sampleMode = 'NS200BW';
Recieve(1).lowPassCoef = []; % -0.9997, 1]
Recieve(1).InputFilter = [];

%% Event object definition
Event(1).info = 'Acquire RF Data.';
Event(1).tx = 1; % use 1st TX structure
Event(1).rcv = 1; % use 1rst Rcv struture
Event(1).recon = 0; % no reconstruction
Event(1).process = 0; %no processing
Event(1).seqcontrol = 1; % transfer data to host
SeqControl(1).conmmand = 'transferToHost';

%save file for VSX
%save('MatFiles/L11-4vAcquireRF');











