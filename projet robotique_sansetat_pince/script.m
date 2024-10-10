clear all
clc
teta=[pi/2 0 0 0 0 pi/2]';
%teta0=[90 0 0 0 0 90]';
modelGD(teta)
% Tinit=[1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
% Tbleu=[-1 0 0 -200; 0 0 1 1400; 0 1 0 500; 0 0 0 1];
% Tjaune=[-1 0 0 0; 0 0 1 1500; 0 1 0 500; 0 0 0 1];
% Trouge=[-1 0 0 200; 0 0 1 1400; 0 1 0 500; 0 0 0 1];
% T1bleu0=[-1 0 0 -200; 0 0 1 1400; 0 1 0 550; 0 0 0 1];
% T1jaune0=[-1 0 0 0; 0 0 1 1500; 0 1 0 550; 0 0 0 1];
% T1rouge0=[-1 0 0 200; 0 0 1 1400; 0 1 0 550; 0 0 0 1];

Tinit=[0 1503.37 1570];
Tbleu=[ -200 1400 500];
Tjaune=[ 0 1500 500];
Trouge=[ 200 1400 500];
tetav=[79.0283   23.0244   44.8402  -11.8210  -68.2899   94.4270]';
tetav=(pi/180).*tetav
% couleur=['r','g','b','m']'; %,'y','k','c','r','g','b','m'
% P1 = trajectoire2points(teta,Tbleu0);%, couleur(1));
% A1 =size(P1);
P2 =trajectoire2points(tetav ,Tinit);%, couleur(2));
(180/pi)*P2'
