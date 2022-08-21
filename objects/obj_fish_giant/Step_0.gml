//die
if(hp<=0){
	instance_create_depth(x,y,-1,obj_explosion)
	with(obj_door_water){instance_destroy()}
	instance_destroy()
}
