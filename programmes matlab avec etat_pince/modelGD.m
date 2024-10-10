function  TG=modelGD(~)
teta=[ 1.5708;0;0;0;0;1.5708];

table=[ teta(1)         495     175     -pi/2;
        teta(2)-pi/2     0      900       0;
        teta(3)          0      175     -pi/2;
        teta(4)          960     0       pi/2; 
        teta(5)         0        0     -pi/2;
        teta(6)-pi   135+233.37  0        0];       
  TG=eye(4,4);
      for i=1:length(table(:,1)) 
           TE=Rz(table(i,1))*Tz(table(i,2))*Tx(table(i,3))*Rx(table(i,4));
          TG=TG*TE;
      end
         