
#include "colors.inc"  //libreria para utilizar el color

camera{          // especificaciones de la cama
location <0,1,-2>
look_at <0,-2,10>
}                

light_source{ 
<10,10,-15>    //localizacion de la camara
color White   // definimos el color de la luz 
}          

background{White} //color del fondo 

polygon{ //tipo de poligono 
42,         
//letra F 
<-1.0,0.0>,<-1.0,1.0>,
<-0.5,1.0>,<-0.5,0.5>,
<-0.9,0.5>,<-0.9,0.0>,
<-1.0,0.0>,
<-0.5,0.9>,<-0.5,0.6>,
<-0.9,0.6>,<-0.9,0.9>,
<-0.5,0.9>,
//letra I
<-0.4,0.0>,<-0.4,1.0>,
<-0.3,1.0>,<-0.3,0.0>,
<-0.4,0.0>,
//letra S
<-0.2,0.0>,<-0.2,1.0>,
<0.3,1.0>,<0.3,0.0>,
<-0.2,0.0>,
<-0.2,0.1>,<0.2,0.1>,
<0.2,0.5>,<-0.2,0.5>,
<-0.2,0.1>,
<-0.1,0.6>,<-0.1,0.9>,
<0.3,0.9>,<0.3,0.6>,
<-0.1,0.6>,
//letra C
<0.4,0.0>,<0.4,1.0>,
<0.8,1.0>,<0.8,0.0>,
<0.4,0.0>,
<0.5,0.1>,<0.5,0.9>,
<0.8,0.9>,<0.8,0.1>,
<0.5,0.1>

texture {pigment{ color rgb <0.0, 1.0, 0.2>}  // espeficicaiones de la texturas del objeto
            normal{bumps 0.5 scale 0.05}
            finish{phong 1}     
            }                          
scale <1,1,1> rotate<0,0,0> translate<0,0,0>  // especificamos la escala
}