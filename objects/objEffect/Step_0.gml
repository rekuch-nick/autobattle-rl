


x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_xscale += gro;
image_yscale += gro;

image_alpha -= fade;

timeCD --;
if(timeCD < 1){
	instance_destroy();
}