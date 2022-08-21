//take damage if nto immune
if(damage_immune==0){
	damage_immune=1
	global.hp-=2
	alarm[1]=60
}
