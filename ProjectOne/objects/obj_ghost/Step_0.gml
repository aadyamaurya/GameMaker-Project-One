if (instance_place(x, y + 1, obj_movable_block)) {
	vspeed = 0
}

if (keyboard_check(vk_left) && (!instance_place(x - ghost_speed, y, obj_block) || !instance_place(x - ghost_speed, y, obj_moving_platform))) {
	    x += -ghost_speed;
	    image_xscale = -1;
	}
	if (keyboard_check(vk_right) && (!instance_place(x + ghost_speed, y, obj_block) || !instance_place(x + ghost_speed, y, obj_moving_platform))) {
	    x += ghost_speed;
	    image_xscale = 1;
	}

if (keyboard_check(vk_up)){
	if (instance_place(x, y+1, obj_block)) || (instance_place(x, y+1, obj_moving_platform)) || instance_place(x, y + 1, obj_movable_block){
	    vspeed = jump_height;
	}
}

if (instance_place(x, y+1, obj_block)) || (instance_place(x, y+1, obj_moving_platform)) || (instance_place(x, y + 1, obj_movable_block)) {
	gravity = 0;
} else {
	gravity = 0.25;
}

if (instance_place(x, y+1, obj_block))

if (vspeed > 12){
	vspeed = 12
}

if (place_meeting(x,y - 1,obj_moving_platform)) {
	y -= 4
}