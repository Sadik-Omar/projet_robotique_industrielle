function etat=enregistre_trj(trj,dT,nom_ficher)
a=6
etat=0;
[a,a]=size(trj); %grandeur de trajectoire
fid = fopen(nom_ficher, 'w'); % ouverture du ficher

 %fprintf(fid, '%10.0f' ,a);
 %fprintf(fid, '%10.5f \n' ,dT);
 for i = 1:a
 fprintf(fid, '%.9f %.9f %.9f %.9f %.9f %.9f \n',trj(:,i));
 end
 fclose(fid);
 etat = 1;
end