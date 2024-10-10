function matrice = Rx(teta) 

c=cos(teta);
s=sin(teta) ; 
matrice =[ 1 0  0  0 
           0 c -s  0
           0 s  c  0
           0 0  0  1] ; 
       