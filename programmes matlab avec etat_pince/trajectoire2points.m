function trj=trajectoire2points(teta,posef,etat)

MGD = modelGD(teta);
p=MGD(1:3,4); %% Approche du 1er point position p
q=MGD(1:3,1:3); % Approche du 1er point position rotation q
%Qd=posef(1:3,1:3);
Qd=[-1 0 0;0 0 1;0 1 0] % Rotation d�sir�e de la fin de l effecteur
%
P1 = p; % 1er Point du segment
P2 = posef' ; % 2e Point du segment
pas=0.04; % Pas de simulation (seconde)
T = 5; % Dur�e du segment (seconde)
iteration=(T/pas)+1; % Nombre d'it�rations
t = [0:pas:T]; % Discr�tisation du temps
s = (t/T)-sin(2*pi*t/T)/(2*pi); % Discr�tisation de l'espace
teta2 = teta;
P = P1*ones(size(s)) + (P2-P1)*s; % Discr�tisation du segment
for i=1:iteration % Calcul des positions
 teta2 = reach(P(:,i),Qd,teta);
trj(:,i)= teta2;
end
trj(7,:)= etat;
