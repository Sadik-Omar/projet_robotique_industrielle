function matrice = Rz(teta) 

c=cos(teta);
s=sin(teta) ; 
matrice =[ c -s   0  0 
           s  c   0  0
           0  0   1  0 
           0  0   0  1] ; 
       