//move with arrows
//argument0 = unit_speed
function move_map(argument0){
    //walk right
    if(keyboard_check(vk_right)){
		image_speed=0
        image_index=0
		x+=argument0;
    }	

	//walk up
    if(keyboard_check(vk_up)){
        image_speed=0
        image_index=1
        y-=argument0;
    }
	
    //walk left
    if(keyboard_check(vk_left)){
        image_speed=0
        image_index=2
        x-=argument0;
    }
	
    //walk down
    if(keyboard_check(vk_down)){
		image_speed=0
        image_index=3
        y+=argument0;
    }
}