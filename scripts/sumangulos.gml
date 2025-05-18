
ang=argument0+argument1;
if(abs(ang)=360){
    ang=0;}
else if(abs(ang)>360){
    ang=round(frac(ang/360)*360);}
if(ang<0){
    ang=360+ang;}
return ang;
