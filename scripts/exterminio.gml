control.mision=1;
control.dificultad=argument0;
sound_play(snd_misionbatalla);
if(control.parlante=2){sound_loop(snd_fondo1);}
switch(argument0){
    case 1: control.nivel=26; break;
    case 2: control.nivel=24; break;
    case 3: control.nivel=18; break;
    case 4: control.nivel=22; break;
    case 5: control.nivel=20; break;
    case 6: control.nivel=16; break;
    case 7: control.nivel=14; break;}
repeat(40){
    do{xx=round(random(ancho*2-6));
        yy=round(random(alto*2-6));}
    until(!collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,bloque,0,1)and
    !collision_rectangle(12+xx*6,72+yy*6,24+xx*6,84+yy*6,enemis,0,1)and
    point_distance(18+xx*6,78+yy*6,unidad.x,unidad.y)>500);
    switch(argument0){
        case 1: instance_create(18+xx*6,78+yy*6,enemy0); break;//cafes
        case 2: instance_create(18+xx*6,78+yy*6,enemy1); break;//azules
        case 3: instance_create(18+xx*6,78+yy*6,enemy3); break;//amarillos
        case 4: instance_create(18+xx*6,78+yy*6,enemy4); break;//verdes
        case 5: instance_create(18+xx*6,78+yy*6,enemy2); break;//rojos
        case 6: instance_create(18+xx*6,78+yy*6,enemy5); break;//morados
        case 7: instance_create(18+xx*6,78+yy*6,archenemy); break;}}//negros
if(instance_exists(enemy4)){
    for(i=0;i<10;i+=1){
        with(instance_find(enemy4,i)){instance_create(x,y,enemy0); instance_destroy();}}}
