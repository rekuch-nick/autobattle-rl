function playerHPBonusCost(){
	return ceil( (ww.playerHPBonus + 100) * max(ww.playerHPBonus / 12, 1) );
}