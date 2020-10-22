         //establecemos las librerias
         #include "colors.inc"
         //agregamos nuestra camara y su posicion 
         camera{
         location <8,3,-2>
         look_at <0,0,2>
          }
          //agregamos la fuente de luz
          light_source{
          <3,3,-3>  
          color red 1 green 1 blue 1
          }    
          // agregamos un plano en nuestra escena
          plane{
          <0,1,0> 0
          texture {pigment{color green 1}}
          }    
          
          union
          {   
          //bola roja
          sphere{
          <0,0,2>,1
          texture{pigment {color red 1}
                  finish{phong 0.5}
                 } 
           translate<0,1,0>      
                } 
          //bola amarilla
          sphere{
          <4,1,2>,1
          texture{pigment {color Yellow }
                  finish{phong 4}
                 }       
                }
           //bola azul
           sphere{
          <-5,1,2>,1
          texture{pigment {color Blue}
                  finish{phong 1}
                 }       
                } 
                
           cylinder{
            <-5,1,3>,<-5,1,-3> 0.2
            texture {pigment{White}}
            scale <1,1,2>
           }
          
          cylinder{
            <0,1,3>,<0,1,-3> 0.2
            texture {pigment{White}}
            }
          cylinder{
            <4,1,3>,<4,1,-3> 0.2
            texture {pigment{White}}
           }
          rotate<0,80,0>
          
          }
          