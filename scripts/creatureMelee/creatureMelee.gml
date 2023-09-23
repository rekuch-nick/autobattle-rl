function creatureMelee(c1, c2){
	
	var dam = irandom_range(c1.meleeDamMin, c1.meleeDamMax);
	
	c2.hp -= dam;
	
	
	if(irandom_range(0, 99) < c1.poisonChance){ c2.poison = true; }
	
	
}