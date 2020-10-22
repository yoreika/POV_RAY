#include "colors.inc"
camera{
location <6,5,-60>
look_at <0,.8,0>
angle 15
}       

light_source{
<20,15,-60>, White
}                 

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
}     
cylinder {
<0,3.83,0>,<0,4.2,0>,1
pigment{White}
finish{ambient .4}}      
}                   

