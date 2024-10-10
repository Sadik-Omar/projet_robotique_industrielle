function t=reach(pf,qf,t) 
n=25; % Nombre maximum d'it�ration
e=1; % Erreur initiale tres grande (1 metre)
a=0.75; % Amortissement sur le pas
MGD=modelGD(t); % Position Cart�sienne actuelle
p=MGD(1:3,4); %position actuelle
q=MGD(1:3,1:3); % rotation actuelle
while(n>0 & e>0.0001) % Tant que l'erreur est plus de 0.1mm (et n>0)
dp=a*(pf-p); % D�placement Cart�sien requis
dq= vect(qf*q'); % rotation requise
dT=[dq;dp]; % torseur de vitesse rotation et vitesse de deplacement (dT = J . dt)
J=jacobienne(t); % �valuation de la Jacobienne
dt=pinv(J)*dT; % Calcul du d�placement theta approx.
t=t+dt; % Calcul la nouvelle position t
MGD=modelGD(t); % Position Cart�sienne actuelle
p=MGD(1:3,4); %Calcul de la nouvelle position p
q=MGD(1:3,1:3); % Calcul de la nouvelle rotation q
DeltaPos=pf-p;
DeltaRot=vect(qf*q');
Critere=[DeltaPos;DeltaRot]; % Matrice colonne 6x1
e=norm(Critere); % Erreur entre p et pf d�sir�e et entre q et qf desiree
n=n-1; % Une it�ration en moins dedisp.
end
if n==0 % Affiche un message lorsque>0.1 mm
disp('Reach: Erreur '); 
end