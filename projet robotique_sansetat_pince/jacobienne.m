function Ja=jacobienne(teta)

table=[ teta(1)       495   175   -pi/2;
        teta(2)-pi/2   0    900       0;
        teta(3)        0    175   -pi/2;
        teta(4)       960    0    pi/2 ;
        teta(5)        0     0    -pi/2;
        teta(6)-pi 135+233.37 0       0];
    
T1=Rz(table(1,1))*Tz(table(1,2))*Tx(table(1,3))*Rx(table(1,4));
T2=Rz(table(2,1))*Tz(table(2,2))*Tx(table(2,3))*Rx(table(2,4));
T3=Rz(table(3,1))*Tz(table(3,2))*Tx(table(3,3))*Rx(table(3,4));
T4=Rz(table(4,1))*Tz(table(4,2))*Tx(table(4,3))*Rx(table(4,4));
T5=Rz(table(5,1))*Tz(table(5,2))*Tx(table(5,3))*Rx(table(5,4));
T6=Rz(table(6,1))*Tz(table(6,2))*Tx(table(6,3))*Rx(table(6,4));

R1=T1(1:3,1:3);
R2=T2(1:3,1:3);
R3=T3(1:3,1:3);
R4=T4(1:3,1:3);
R5=T5(1:3,1:3);
R6=T6(1:3,1:3);
R11=R1;
R12=R11*R2;
R13=R12*R3;
R14=R13*R4;
R15=R14*R5;
R16=R15*R6;
k=[0 0 1]';
%------------------------------------------
e1=k;
e2=R11*k;
e3=R12*k;
e4=R13*k;
e5=R14*k;
e6=R15*k;
%-----------------------------------------
P6=T6(1:3,4);
P5=T5(1:3,4);
P4=T4(1:3,4);
P3=T3(1:3,4);
P2=T2(1:3,4);
P1=T1(1:3,4);
%--------------------------------------
r6p=P6;
r5p=P5+R5*r6p;
r4p=P4+R4*r5p;
r3p=P3+R3*r4p;
r2p=P2+R2*r3p;
r1p=P1+R1*r2p;
%-----------------------------------------
r6=R15*r6p;
r5=R14*r5p;
r4=R13*r4p;
r3=R12*r3p;
r2=R11*r2p;
r1=r1p;
%-------------------------------------------
Ja(:,1)=[e1;cross(e1,r1)];
Ja(:,2)=[e2;cross(e2,r2)];
Ja(:,3)=[e3;cross(e3,r3)];
Ja(:,4)=[e4;cross(e4,r4)];
Ja(:,5)=[e5;cross(e5,r5)];
Ja(:,6)=[e6;cross(e6,r6)];
