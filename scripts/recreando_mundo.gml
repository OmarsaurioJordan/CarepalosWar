den_obs=choose(50,55,60,65);//densidad obstaculos
den_dec=choose(15,20,25,30);//densidad decorados
repeat(choose(1,1,2,2,2,3)){//cantidad pueblos
    xx=round(random(ancho-13));
    yy=round(random(alto-13));
    instance_create(78+xx*12,138+yy*12,pueblo);}
repeat(round((ancho*alto)/den_obs)){
    do{xx=round(random(ancho*2-6));
        yy=round(random(alto*2-6));}
    until(!collision_rectangle(13+xx*6,73+yy*6,23+xx*6,83+yy*6,all,0,1))
    instance_create(18+xx*6,78+yy*6,bloque);}
repeat(round((ancho*alto)/den_dec)){
    do{xx=round(random(ancho*4-12));
        yy=round(random(alto*4-12));}
    until(!collision_rectangle(11+xx*3,71+yy*3,19+xx*3,79+yy*3,all,0,1))
    instance_create(15+xx*3,75+yy*3,decorado);}
repeat(20+round(random(20))){
    xx=round(random(room_width-200));
    yy=round(random(room_height-260));
    instance_create(100+xx,160+yy,bichin);}
with(pueblo){instance_destroy();}
