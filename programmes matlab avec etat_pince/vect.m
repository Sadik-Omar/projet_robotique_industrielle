function mat=vect(A)
mat=.5*[A(3,2) -A(2,3) 
        A(1,3) -A(3,1)
        A(2,1) -A(1,2)];
end
