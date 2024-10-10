function matrice = Rz( teta )
C = cos(teta);
S = sin(teta);
matrice =[ C  -S 0  0
           S  C  0  0
           0  0  1  0
           0  0  0  1];
end

