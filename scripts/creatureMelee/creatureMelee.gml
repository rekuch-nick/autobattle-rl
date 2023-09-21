function creatureMelee(c1, c2){
	
	var dam = irandom_range(c1.meleeDamMin, c1.meleeDamMax);
	
	c2.hp -= dam;
	
}