close all;clear;clc;j=1i;
load('Frame');
f_CFO=500e3;
Ts=50e-9;
y=Frame.*exp(j*2*pi*f_CFO*Ts*(0:480-1)); % [1x480]
%% CFO
D=16;
z=y(D*5+1:D*6)*y(D*6+1:D*7)'; % [1x16]*[16x1]
f_Coarse_est=(-1/(2*pi*D*Ts))*angle(z);
Frame_After_Coarse=y.*exp(-j*2*pi*f_Coarse_est*Ts*(0:480-1)); % [1x480]
sum(abs(Frame-Frame_After_Coarse));
%% Channel
%% Payload_generation
M = 16;
data_16QAM = randi([0 M-1],1,48*2);
% data_Payload_3=data_16QAM(1:48);
% data_Payload_4=data_16QAM(49:end);
save data_Payload_3 data_Payload_3
save data_Payload_4 data_Payload_4
data_Payload=qammod(data_16QAM,M,0);
% plot(data_Payload,'*');
figure,plot(data_Payload(1:48),'*');
figure,plot(data_Payload(49:end),'*');