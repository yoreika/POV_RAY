#include "colors.inc"  
#include "glass.inc"
#include "textures.inc"
camera{
location <45,25,35>
look_at <0,10,0>
}              

light_source{
<10,10,10>
color White
}                                                                       
    

      

//creacion del plano
plane{
y,0.0
     texture{ // ----------------------------------------   
            pigment{ wood turbulence 0.02 octaves 4 lambda 3
                     scale 0.175 rotate <2, 3, 0> 
                     color_map {
                       [0.0 color rgb <1.30, 0.99, 0.64>]
                       [0.5 color rgb <0.75, 0.39, 0.17>]
                       [0.7 color rgb <0.75, 0.39, 0.17>]
                       [1.0 color rgb <1.30, 0.99, 0.64>]
                     }// end of color_map
                   } // end of pigment
            // normal { agate 0.5 scale 0.25} 
            finish { phong 1 } 
            rotate <0,0, 0>  scale 90  translate <0,0,0>
        } // end of texture ---------------------------------
             

}   

//declaracion del objeto copa
#declare ejemplo = object{
union{

difference{
sphere{<0,0,0>, 5 scale y*2}
sphere{<0,0,0>, 4.9 scale y*2}
box{<-5,6,-5>,<5,10,5>}
translate y*20
} //end difference
            
cylinder{<0,0,0>,<0,10,0>,0.5}
cone{<0,1,0>,0.0,<0,0.1,0>,5.0}
texture{T_Glass3}
interior{ior 1.5}
}//end union                
}//end declare        
//llamamos al objeto  

//declaracion del objeto florera
#declare florera = object{
difference{
sor{
13,
<0,-4.3>
<0.5,-4.2>
<0.8,-4.1>
<0.7,-4.0>
<1.2,-1.4>
<1.4,0.2>
<1.5,0.8>
<1.2,1.2>
<0.4,2>
<0.5,2.8>
<0.8,3.7>
<1.3,4>
<1,4.2>
pigment{color rgb<0.32,0.32,0.32>}                   
finish {phong 10}
}//end sor     
cylinder {
<0,3.83,0>,<0,4.2,0>,1
pigment{White}
finish{ambient .4}}      
}//end difference     

}//end declare de florera        


//declaracion del objeto vaso
#declare vaso = object{
difference{
       //unimos clindro y esfera
union{       
    //creacion de vaso
cylinder{
<0,0,0>,<0,4.75,0>,2
scale 1/4.75
pigment{
image_map{jpeg "taza.jpg" map_type 2}
}
scale 4.75
}
      //creacion del agarradero
sphere_sweep{
b_spline
7,
<.7,2.2,0>,.8
<1.5,.5,0>,.3
<3.1,.5,0>,.3
<4,2.4,0>,.3
<3.1,4.1,0>,.3
<1.5,4.1,0>,.3
<.7,2.6,0>,.8
pigment {rgb <51,153,204>/255}
finish{ambient.4}
}                
} //end union
//creacion del cilindro dentro del vaso 
cylinder{
<0,.2,0>,<0,4.9,0>,1.8
pigment{White}
finish{ambient.4}
}
} //end difference  
}//end declare de vaso

//declaracion de objecto plato
#declare plato = object {  
difference{
cone{ <0,0,0>,1.00,<0,0.50,0>,0.600 

      texture{ pigment{ color rgb<0.60,1,0.75>}
               // pigment{ color rgb<1.00,0.60,0.00>}
               finish { phong 0.5 reflection{ 0.00 metallic 0.00} } 
             } // end of texture
      scale <1,1,1> rotate<0,0,0> translate<0,0.0001,0> 
    } // end of cone -----------------------------------

cone{ <0,-0.2,0>,0.99,<0,0.40,0>,0.580 

       pigment{ color White} 
       finish { phong 0.5} 
       scale <1,1,1> rotate<0,0,0> translate<0,0.0001,0>
       }//end cone      
   }//end difference       

}//end declare plato      



//declaracion del objeto cuchara
#declare cuchara = object{
union{
difference{
sphere{<0,0,0>, 5 scale y*1.5}
sphere{<0,0,0>, 4.9 scale y*1.5}
box{<-6,8,0>,<6,-8,5>} 
translate y*20
}//end difference  
cylinder{<0,-6,-1>,<0,12.5,-1>,0.9} 
pigment{White} 
finish { phong 0.5}
}//end union
}//end declare cuchara


object{
ejemplo 
translate<15,5,-5>
}    

object{
ejemplo 
translate<0,5,-10>
}      

object{
florera   
scale<5,6,5>
translate<-20,15,-15> 
}  

object{
vaso      
scale<4,4,4>     
rotate<0,250,0>
translate<-15,5,15>  
}                     

object{
plato
scale<10,10,10> 
rotate<180,0,0>
translate<7,7,10>
}        

object{
cuchara  
scale<0.5,0.5,0.5>  
rotate<-120,-35,-20>
translate<5,12,20>
}