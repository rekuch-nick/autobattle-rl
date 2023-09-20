function creatureMelee(c1, c2){
	
	var dam = irandom_range(c1.d1, c1.d2);
	
	c2.hp -= dam;
	
}