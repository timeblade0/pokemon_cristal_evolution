unit_speed=6
image_speed=0
depth=-1

//change sprite after returning to map
{
	if(global.pokemon=="slugma"){
		if(global.crystal_fire==0){sprite_index=spr_slugma}
		if(global.crystal_fire==1){sprite_index=spr_magcargo}
	}
	if(global.pokemon=="aron"){
		if(global.crystal_ground==0){sprite_index=spr_aron}
		if(global.crystal_ground==1){sprite_index=spr_lairon}
	}
	if(global.pokemon=="magikarp"){
		if(global.crystal_water==0){sprite_index=spr_magikarp}
		if(global.crystal_water==1){sprite_index=spr_gyrados}
	}
}
