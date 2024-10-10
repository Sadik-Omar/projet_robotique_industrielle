clear all
clc
teta=[pi/2 0 0 0 0 pi/2]';
%teta0=[90 0 0 0 0 90]';
modelGD(teta)
Tinit=[0 1503.37 1570];
Tbleu=[ -200 1400 500];
Tjaune=[ 0 1500 500];
Trouge=[ 200 1400 500];
tetav=[90 0 0 0 0 90]';
tetav=(pi/180).*tetav
etat= 1*pi/180;
P2 =trajectoire2points(tetav ,Tinit,etat);%, couleur(2));
(180/pi)*P2'
