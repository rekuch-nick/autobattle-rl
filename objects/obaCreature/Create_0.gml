nam = "Base Unit";
img = "-";
col = c_white;
aly = 0;
canMoveDiag = true;

inCombatWith = noone;
combatRange = 1;
fat = 16;

hp = 100;
hpMax = 100;

ai = AI.plain;
moveCD = irandom_range(0, 9);
moveCDMax = 30;


atkCDMax = 30;
atkCD = atkCDMax + irandom_range(0, 9);
meleeDamMin = 1;
meleeDamMax = 6;
shotType = noone;
rangeDamMin = 0; 
rangeDamMax = 0;

xSpot = floor(x / 32);
ySpot = floor(y / 32);
xLast = xSpot;
yLast = ySpot;

