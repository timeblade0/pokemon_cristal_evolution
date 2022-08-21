//walking
{
	//walk right
	if(keyboard_check(vk_right)){
		if(place_meeting(x+2, y, obj_wall)==0){
			dire=0
		    image_index=dire/90
			x+=unit_speed;
		}
	}	

	//walk left
	if(keyboard_check(vk_left)){
		if(place_meeting(x-2, y, obj_wall)==0){
			dire=180
			image_index=dire/90
			x-=unit_speed;
		}
	}
	
	//magikarp can swim
	if(room==room_water1&&global.pokemon=="magikarp"){
		//swim up
		if(keyboard_check(vk_up)){
			if(place_meeting(x, y-2, obj_wall)==0){
				dire=90
			    image_index=dire/90
				y-=unit_speed;
			}
		}	

		//swim down
		if(keyboard_check(vk_down)){
			if(place_meeting(x, y+2, obj_wall)==0){
				dire=270
				image_index=dire/90
				y+=unit_speed;
			}
		}
	}
}

//shoot
{
	if(keyboard_check_pressed(ord("A"))){
		//rock throw - aron
		if(global.pokemon=="aron"){
			AA=instance_create_depth(x,y,depth-1,obj_rock_throw)
			AA.direction=dire
			AA.speed=4
			if(global.crystal_ground==1){
				AA.sprite_index=spr_boulder
				AA.image_xscale=1
				AA.image_yscale=1
				AA.image_speed=0
				AA.image_index=dire/90
			}
		}

		//ember - slugma
		if(global.pokemon=="slugma"){
			AA=instance_create_depth(x,y,depth-1,obj_ember)
			AA.direction=dire
			AA.speed=4
			if(global.crystal_fire==1){
				AA.sprite_index=spr_fireblast
				AA.image_xscale=0.5
				AA.image_yscale=0.5
				AA.image_speed=0
				AA.image_index=dire/90
			}
		}
		//bubble - magikarp
		if(global.pokemon=="magikarp"){
			AA=instance_create_depth(x,y,depth-1,obj_bubble)
			AA.direction=dire
			AA.image_index=dire/90
			AA.speed=4
			if(global.crystal_water==1){
				AA.sprite_index=spr_tornado
				AA.image_xscale=1
				AA.image_yscale=1
				AA.image_speed=1
				AA.image_index=dire/90
				AA.speed=5
			}
		}
	}
}

//floor under player
{
	if(place_meeting(x, y+2, obj_floor)==1){
		if(fall==1){vspeed=0}
		fall=0
		jump=0
	}
	else{
		fall=1
	}

//fall if no floor under player
if(room==room_water1&&global.pokemon=="magikarp"){
	//swim instead of falling
}
else
{
	if(fall==1){
		y+=2
	}
}
}

//player is in lava
{
	if(global.pokemon!="slugma"){
		if(place_meeting(x, y+2, obj_lava)==1){
			if(damage_immune!=1){
				global.hp-=1
				damage_immune=1
				alarm[1]=60
			}
		}
	}
}
	
//player is in spikepit
{
	if(global.pokemon!="aron"){
		if(place_meeting(x, y+2, obj_spikepit)==1){
			if(damage_immune!=1){
				global.hp-=1
				damage_immune=1
				alarm[1]=60
			}
		}
	}
}

//hit roof/wall and fall
{
	if(place_meeting(x, y-1, obj_wall)==1){
		vspeed=0
		fall=1
	}
}

//jumping
{
	//magikarp can swim
	if(room==room_water1&&global.pokemon=="magikarp"){
		//swim instead of jump
	}
	else
	{
		//press jump button
		if(keyboard_check_pressed(ord("Z"))){
			if(jump==0){
				jump=1
				vspeed=-4
				alarm[0]=60
			}
		}

		//release jump button
		if(keyboard_check_released(ord("Z"))){
			vspeed=0
			fall=1
		}
	}
}
