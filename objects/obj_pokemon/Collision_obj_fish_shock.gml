//gyrados takes no gamage
if(global.pokemon=="magikarp"&&global.crystal_water==1){
	instance_destroy(other,1)
}
//all others take damage
else{
	if(damage_immune==0){
		damage_immune=1
		instance_destroy(other,1)
		global.hp-=1
		alarm[1]=60
	}
}
