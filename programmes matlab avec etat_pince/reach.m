function t=reach(pf,qf,t)
n=25; %nombre maximum d'itération
e=1; %erreur initiale tres grande (1 metre)
a=0.75; %amortissement sur le pas
MGD=Model(t);%position cartesienne actuelle
p=MGD(1:3,4);%position actuelle
q=MGD(1:3,1:3);%rotation actuelle
while(n>0 && e>0.0001)% tant que l'erreur est plus de 0.1mm ( et n>0)
    dp=a*(pf-p);%deplacement cartesien requis
    dq=vect(qf*q');%rotation requise
    dT=[dq;dp];%torseur de vitesse rotation et vitesse deplacement(dT=J.dt)
    J=Jacobienne(t);%evaluation de la jacobienne
    dt=pinv(J)*dT;%calcul de deplacement thetaapprox
    t=t+dt; %calcul la nouvelle position t
    MGD=Model(t);%position cartesienne actuelle
    p=MGD(1:3,4);%calcul de la nouvelle position p
    q=MGD(1:3,1:3);%calcule de la nouvelle position q
    DeltaPos=pf-p;
    DeltaRot=vect(qf*q');
    Critere=[DeltaPos;DeltaRot];%matrice colonne 6x1
    e=norm(Critere);%erreur entre p et pf desiree et entre q et pf desiree
    n=n-1;%une iteration en moins dedisp.
end
if n==0 %affiche un message lorsque>0.1mm
    disp('Reach:Erreur');
end