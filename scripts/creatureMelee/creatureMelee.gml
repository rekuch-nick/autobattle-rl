function creatureMelee(c1, c2){
	
	var dam = irandom_range(c1.meleeDamMin, c1.meleeDamMax);
	if(c2.frozen > 0 && !c2.freezeImmune){ dam = c1.meleeDamMax; }
	
	dam = clamp(dam - c2.dr, 1, dam);
	c2.hp -= dam;
	
	
	if(irandom_range(0, 99) < c1.poisonChance){ c2.poison = true; }
	if(irandom_range(0, 99) < c1.meleeFreezeChance){ c2.frozen = max(c1.meleeFreezePower, c2.frozen); }
	
	if(c2.retaliate > 0){
		c1.hp -= c2.retaliate;
	}
	
	if(irandom_range(0, 99) < c1.rageChance){ c1.rage = max(c1.rage, c1.ragePower); }
}