#include "colors.inc"  
#include "textures.inc"
camera{
location <0,25,0>
look_at <0,0,0>
}              

light_source{
<0,10,0>
color red 1 green 1 blue 1
}                         

plane{
<0,1,0> 0
texture{
pigment{Gray70}
}
}    

//bola zaul espiral
sphere{<2.9,0,-2>, 1
texture{pigment{spiral1 3 rotate<120,0,-100>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color rgb<0.0,0.1,0.1>]}
scale 2.5}
finish{phong 0.5}}
}                
//bola roja               
sphere{ <1,0,2>, 1 
texture{pigment {color Red}
finish{phong 5.5}}
}             
//bola azul
sphere{ <-1,0,2>, 1 
texture{pigment {color Blue}
finish{phong 5.5}}
}
//bola amarillo
sphere{ <0,0,4>, 1 
texture{pigment {color Yellow}
finish{phong 5.5}}
}    
//bola verde
sphere{ <2,0,0>, 1 
texture{pigment {color Green}
finish{phong 5.5}}
}      
//bola naranja
sphere{ <0,0,0>, 1 
texture{pigment {color Orange}
finish{phong 5.5}}
} 
//bola morada
sphere{ <-2,0,0>, 1 
texture{pigment {color rgb <0.76,0.11,1>}
finish{phong 5.5}}
}  
//bola chocolate
sphere{ <-3,0,-2>, 1 
texture{pigment {color rgb <0.32,0.21,0>}
finish{phong 5.5}}
}   
//bola negro
sphere{ <-1,0,-2>, 1 
texture{pigment {color rgb <0,0,0>}
finish{phong 5.5}}
}
//bola amarillo espiral
sphere{<1,0,-2>, 1
texture{pigment{spiral1 3 rotate<100,0,-110>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color rgb<1,0.95,0.09>]}
scale 2.5}
finish{phong 0.5}}
} 
//bola chocolate espiral
sphere{<4,0,-4>, 1
texture{pigment{spiral1 3 rotate<120,0,-90>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color rgb<0.32,0.21,0>]}
scale 2.5}
finish{phong 0.5}}
} 
//bola verde espiral
sphere{<2,0,-4>, 1
texture{pigment{spiral1 3 rotate<105,0,-130>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color Green]}
scale 2.5}
finish{phong 0.5}}
}   
//bola naranja espiral
sphere{<0,0,-4>, 1
texture{pigment{spiral1 3 rotate<85,0,-130>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color Orange]}
scale 2.5}
finish{phong 0.5}}
}    
//bola morado espiral
sphere{<-2,0,-4>, 1
texture{pigment{spiral1 3 rotate<95,0,-120>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color rgb<0.76,0.11,1>]}
scale 2.5}
finish{phong 0.5}}
}      
//bola roja espiral
sphere{<-4,0,-4>, 1
texture{pigment{spiral1 3 rotate<100,0,-135>
color_map{
[0.0 color rgb<1,1,1>]
[0.5 color rgb<1,1,1>]
[0.5 color Red]}
scale 2.5}
finish{phong 0.5}}
}  
//taco
cylinder{ <-9,1,9>,<-5,1,-8> 0.5
texture{pigment {Tan_Wood}}} 

