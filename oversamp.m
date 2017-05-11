% Program 3-4
% oversamp.m
%
% Insert zero data to input data
%
% Programmed by H.Harada
%

function [out] = oversamp( indata, nsymb , sample) 

%****************** variables *************************
% indata : input sequence
% nsymb   : Number of symbols
% sample : Number of oversample
% *****************************************************

out=zeros(1,nsymb*sample);
% out(1:sample:1+sample*(nsymb))=indata; % error
out(1:sample:1+sample*(nsymb-1))=indata; % note

%******************** end of file ***************************
