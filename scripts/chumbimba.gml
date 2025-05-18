if(control.mision=0){
    control.mision=2;
    control.dificultad=4;
    unidad.alarm[3]=-1;
    unidad.tarro=0;
    sound_play(snd_misionpuntos);
    repeat(16){
    do{xx=round(random(ancho*2-6));
        yy=round(random(alto*2-6));}
    until(!collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,bloque,0,1)and
    !collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,enemis,0,1)and
    point_distance(18+xx*6,78+yy*6,unidad.x,unidad.y)>400);
    instance_create(18+xx*6,78+yy*6,aleatoriador);}
    if(control.parlante=2){sound_loop(snd_fondo1);}}
else if(control.acumulado>=control.dificultad){
    control.acumulado=0; control.dificultad+=1;
    sound_play(snd_mastipos);
    repeat(round(power(control.dificultad,1.18))){
    do{xx=round(random(ancho*2-6));
        yy=round(random(alto*2-6));}
    until(!collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,bloque,0,1)and
    !collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,enemis,0,1)and
    point_distance(18+xx*6,78+yy*6,view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2)>600);
    instance_create(18+xx*6,78+yy*6,aleatoriador);}}
