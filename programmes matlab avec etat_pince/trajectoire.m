clear all
clc

P1=[0;0;0];
P2=[-200;1400;500];
P3=[0;1500;500];
P4=[200;1400;500];

pas=0.04; % Pas de simulation (seconde)
T = 5; % Durée pour parcourir le segment (seconde)
t = [0:pas:T]; % Discrétisation du temps
s = (t/T)-sin(2*pi*t/T)/(2*pi); % Discrétisation de l'espace
figure(1)
plot(t,s,'rs')
xlabel('temps(s)');
ylabel('Discrétisation de l espace ');
grid on
%--------------------------------------------
P11 = P1*ones(size(s)) + (P2-P1)*s;% Discrétisation du segment
P22 = P2*ones(size(s)) + (P3-P2)*s;
P33 = P3*ones(size(s)) + (P4-P3)*s;
P44 = P4*ones(size(s)) + (P2-P4)*s;
P55 = P2*ones(size(s)) + (P3-P2)*s;
P66 = P3*ones(size(s)) + (P4-P3)*s;
P77 = P4*ones(size(s)) + (P1-P4)*s;
figure(2)
plot3(P11(1,:,:),P11(2,:,:),P11(3,:,:),'r*')
hold on;
plot3(P22(1,:,:),P22(2,:,:),P22(3,:,:),'b')
hold on;
plot3(P33(1,:,:),P33(2,:,:),P33(3,:,:),'k')
hold on;
plot3(P44(1,:,:),P44(2,:,:),P44(3,:,:),'g')
hold on;
plot3(P55(1,:,:),P55(2,:,:),P55(3,:,:),'y*')
hold on;
plot3(P66(1,:,:),P66(2,:,:),P66(3,:,:),'m+')
hold on;
plot3(P77(1,:,:),P77(2,:,:),P77(3,:,:),'c*')
hold on;
axis([-200,500,0,1500,-500,700]);
xlabel('x');
ylabel('y ');
zlabel('z ');
grid on
%----------------------------------------------------------
% Vitesse de la fin d'effecteur aus points du segment [P1,P2]
%----------------------------------------------------------
v1(1)=0;
v2(1)=0;
v3(1)=0;
v4(1)=0;
v5(1)=0;
v6(1)=0;
v7(1)=0;

for i=2:length(s)-1

 v1(i)=norm(P11(:,i+1)-P11(:,i))/pas;
 v2(i)=norm(P22(:,i+1)-P22(:,i))/pas;
 v3(i)=norm(P33(:,i+1)-P33(:,i))/pas;
 v4(i)=norm(P44(:,i+1)-P44(:,i))/pas;
 v5(i)=norm(P55(:,i+1)-P55(:,i))/pas;
 v6(i)=norm(P66(:,i+1)-P66(:,i))/pas;
 v7(i)=norm(P77(:,i+1)-P77(:,i))/pas;
 

 i=i+1;
end
v1(length(v1)+1)=0;
v2(length(v2)+1)=0;
v3(length(v3)+1)=0;
v4(length(v4)+1)=0;
v5(length(v5)+1)=0;
v6(length(v6)+1)=0;
v7(length(v7)+1)=0;
figure(3)
plot(t,v1,'r*')
hold on;
plot(t,v2,'b')
hold on;
plot(t,v3,'k')
hold on;
plot(t,v4,'g')
hold on;
plot(t,v5,'yo')
hold on;
plot(t,v6,'m*')
hold on;
plot(t,v7,'c')
hold on;
xlabel('temps(s)');
ylabel('vitesse (mm/s) ');
grid on
%---------------------------------------------------------------
% acceleration de la fin d'effecteur aux points du segment [P1,P2]
%---------------------------------------------------------------
a1(1)= 0;
a2(1)= 0;
a3(1)= 0;
a4(1)= 0;
a5(1)= 0;
a6(1)= 0;
a7(1)= 0;
for i=2:length(s)-1

 a1(i)=(v1(i+1)-v1(i))/pas;
 a2(i)=(v2(i+1)-v2(i))/pas;
 a3(i)=(v3(i+1)-v3(i))/pas;
 a4(i)=(v4(i+1)-v4(i))/pas;
 a5(i)=(v5(i+1)-v5(i))/pas;
 a6(i)=(v6(i+1)-v6(i))/pas;
 a7(i)=(v7(i+1)-v7(i))/pas;

 i=i+1;3
end
a1(length(a1)+1)=0;
a2(length(a2)+1)=0;
a3(length(a3)+1)=0;
a4(length(a4)+1)=0;
a5(length(a5)+1)=0;
a6(length(a6)+1)=0;
a7(length(a7)+1)=0;
figure(4)
plot(t,a1,'r*')
hold on;
plot(t,a2,'b')
hold on;
plot(t,a3,'k')
hold on;
plot(t,a4,'g')
hold on;
plot(t,a5,'yo')
hold on;
plot(t,a6,'m*')
hold on;
plot(t,a7,'c')
hold on;
xlabel('temps(s)');
ylabel('accéleration (mm/s^2) ');
grid on