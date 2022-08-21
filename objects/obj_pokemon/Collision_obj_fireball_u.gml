//take damage if not slugma
if(global.pokemon!="slugma"){
	if(damage_immune==0){
		damage_immune=1
		global.hp-=1
		alarm[1]=60
	}
}
instance_create_depth(other.x,other.y,-1,obj_explosion)
instance_destroy(other,0)
