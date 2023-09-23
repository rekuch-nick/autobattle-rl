function worldReset(){
	
	with(obaCreature){ instance_destroy(); }
	with(obaShot){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	
	
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		fmap[a, b] = noone;
		bmap[a, b] = noone;
		mmap[a, b] = noone;
	}}

}