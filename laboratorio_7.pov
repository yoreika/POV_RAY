#include"colors.inc"
camera{
location<55,40,-30> 
look_at<.7,2.3,0>
angle 15
}     
//iluminacion 
light_source
{
<20,13,-60>, White
}
//color de fondo 
background{Pink}
//diferencia entre union 
difference {

union{

cylinder{

<0,0,0>,<0,4.75,0>,2
scale 1/4.75
pigment{
 image_map{jpeg"taza.jpg" map_type 2}

}//fin de la pinmentacion 
scale 4.75 
} //fin del ciclindro

sphere_sweep{ 
b_spline 7,
<.7,2.2,0>,.8
<1.5,.5,0>,.3
<3.1,.5,0>.3
<4,2.4,0>,.3
<3.1,4.1,0>.3
<1.5,4.1,0>.3
<7,2.6,0>,.8
 pigment{
rgb<51,153,204>/255
}//fin de la pigmentacion
finish{ambient.4}
}//fin de la esfera 
 
 cylinder{ 
 <0,.2,0>,
 <0,4.9,0>,1.8
 pigment {White}
 finish{ambient.4}
 
 }//fin del cilindro
 

} //fin de la uncion 


}  //fin de la diferencia