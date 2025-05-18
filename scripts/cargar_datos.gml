ini_open("save_carepalowar.ini")
if(ini_section_exists("datos")){
    if(ini_key_exists("datos","avance")and ini_key_exists("datos","version")){
        control.avance=ini_read_real("datos","avance",0);}//0:nivel1, 1:nivel2, 2:nivel3, 3:nivel4, ... 7:premio
    else{ini_write_real("datos","avance",0); ini_write_real("datos","version",3);}
    n=0;
    for(j=0;j<16;j+=1){
        llave=string(j);
        if(ini_key_exists("datos",llave)){
            control.record[j-j/2]=ini_read_real("datos",llave,0);}
        else{ini_write_real("datos",llave,0);}
        j+=1; llave=string(j); n+=1;
        if(ini_key_exists("datos",llave)){
            control.nombre[j-n]=ini_read_string("datos",llave,"?");}
        else{ini_write_string("datos",llave,"?");}}}
else{ini_write_real("datos","avance",0);
    for(j=0;j<16;j+=1){
        llave=string(j);
        ini_write_real("datos",llave,0);
        j+=1; llave=string(j);
        ini_write_string("datos",llave,"?");}}
ini_close();
