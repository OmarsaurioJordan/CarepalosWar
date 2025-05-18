for(i=7;i>-1;i-=1){
    if(i=0){
        if(record[i]<control.nivel){
            do{
                nom=get_string("Exelente, Nuevo Record!"+"## puntos: "+string(control.nivel)
                +"##Digite su Nombre","");}
            until(string_length(nom)<13);
            if(nom!=""){
                for(j=7;j>0;j-=1){
                    record[j]=record[j-1];
                    nombre[j]=nombre[j-1];}
                record[i]=control.nivel;
                nombre[i]=nom;}}}
    else if(record[i]<control.nivel and record[i-1]>=control.nivel){
        do{
            nom=get_string("Felicidades"+"#Entre los 8!"+"## puesto: "+string(i+1)
            +"# puntos: "+string(control.nivel)+"##Digite su Nombre","");}
        until(string_length(nom)<13);
        if(nom!=""){
            for(j=7;j>i;j-=1){
                record[j]=record[j-1];
                nombre[j]=nombre[j-1];}
            record[i]=control.nivel;
            nombre[i]=nom;}}}
ini_open("save_carepalowar.ini");
n=0;
for(t=0;t<16;t+=1){
    llave=string(t);
    ini_write_real("datos",llave,control.record[t-t/2]);
    t+=1; llave=string(t); n+=1;
    ini_write_string("datos",llave,control.nombre[t-n]);}
ini_close();
