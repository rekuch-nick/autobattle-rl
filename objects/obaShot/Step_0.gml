if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	
	var xt = x; var yt = y;
	if(targetType == ShotAI.direct){
		xt = aly < 0 ? -100 : 2000;
		if(targetCreature != noone){
			xt = targetCreature.x + targetCreature.fat;
			yt = targetCreature.y + targetCreature.fat;
		}
	}
	
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	if(pointAtTarget){
		image_angle = point_direction(x, y, xt, yt);
	}
}




x += xSpeed;
y += ySpeed;
ySpeed += grav;



xSpot = floor(x / 32);
ySpot = floor(y / 32);

var notYet = false;
if(xSpeed > 0 && x % 32 < 8){ notYet = true; }
if(xSpeed < 0 && x % 32 > 25){ notYet = true; }
if(ySpeed > 0 && y % 32 < 8){ notYet = true; }
if(ySpeed < 0 && y % 32 > 25){ notYet = true; }

if(!notYet && inBounds(xSpot, ySpot)){
	var m = ww.mmap[xSpot, ySpot];
	if(m != noone){
		if(m.aly != aly){
			timeCD = 0;
			
			if(damageOnHit){
				var dam = irandom_range(rangeDamMin, rangeDamMax);
				m.hp -= dam;
			}
			
			//instance_create_depth(x, y, depth, effSpark);
		}
	}
}


if(!inBounds(xSpot, ySpot)){ timeCD = 0; }
timeCD --;
if(timeCD < 1){ instance_destroy(); }