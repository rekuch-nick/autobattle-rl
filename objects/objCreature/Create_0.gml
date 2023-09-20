nam = "Base Unit";
img = "-";
col = c_white;
aly = 0;
canMoveDiag = true;

inCombatWith = noone;
combatRange = 1;
fat = 32;

hp = 100;
hpMax = 100;

ai = AI.plain;
moveCD = irandom_range(0, 9);
moveCDMax = 30;


atkCDMax = 30;
atkCD = atkCDMax + irandom_range(0, 9);
d1 = 1;
d2 = 6;

xSpot = floor(x / 32);
ySpot = floor(y / 32);
xLast = xSpot;
yLast = ySpot;

