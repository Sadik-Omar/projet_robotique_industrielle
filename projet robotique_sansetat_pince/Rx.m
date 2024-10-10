function matrice = Rx( teta )
C = cos(teta);
S = sin(teta);
matrice =[ 1  0  0  0
           0  C  -S 0
           0  S  C  0
           0  0  0  1];

end

