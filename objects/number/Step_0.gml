/// @description Insert description here
// You can write your code in this editor

y += ySpeed;
x += xSpeed;

alpha *= alpha_decay;
scale *= alpha_decay;

if (alpha <= 0.05){
	instance_destroy();	
}
















