function Tg = modelGD( teta)

table =[ teta(1)            495         175    -pi/2;
         teta(2)-pi/2        0          900     0;
         teta(3)             0          175     -pi/2;
         teta(4)            960          0       pi/2;
         teta(5)             0           0      -pi/2;
         teta(6)-pi         135+233.37   0        0  ];
     
     Tg = eye(4,4);
     for i=1:length(table(:,1))
         Te = Rz(table(i,1))*Tz(table(i,2))*Tx(table(i,3))*Rx(table(i,4));
         Tg = Tg*Te;
     end 


end

