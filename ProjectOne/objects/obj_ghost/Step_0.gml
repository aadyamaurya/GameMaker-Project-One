if (has_weapon = true){
	if (keyboard_check_pressed(ord("F"))) {
		instance_create_layer(x, y, "Instances", obj_weapon);
		weapon_active = true;
	}
	if (keyboard_check_released(ord("F"))) {
		weapon_active = false;
	}
	
}

// gate check
if (instance_place(x,y,obj_gate)) {
	if (keyboard_check_pressed(ord("E"))) {
		exit_open = true;
	}
}

/////////
if (keyboard_check_pressed(ord("E"))) { //move box around by holding E near the box
    var movable_block = instance_place(x + image_xscale * 12, y, obj_movable_block);

    if (movable_block != noone) {
        grabbing_box = true;
        grabbed_box = movable_block;
    }
}

if (keyboard_check_released(ord("E"))) { //let goo of the box
    grabbing_box = false;
    grabbed_box = noone;
}

//move the player and the box when grabbing
if (grabbing_box && grabbed_box != noone) {
    if (keyboard_check(vk_left)) {
		if !(place_meeting(x, y, obj_movable_block)) {
			//x += -ghost_speed; 
			grabbed_box.x = x - 20;
			grabbed_box.x += -ghost_speed; 
		} 
    }
    if (keyboard_check(vk_right)) {    
		if !(place_meeting(x, y, obj_movable_block)) {
            //x += ghost_speed; 
			grabbed_box.x = x + 8;
			grabbed_box.x += ghost_speed; 
		}
	}
	if (keyboard_check(vk_up)) {    
		if !(place_meeting(x, y, obj_movable_block)) {
            //y +=  0.25; 
			grabbed_box.y = y - 12;
			grabbed_box.y += 0.01; 
		}
	}
}

/////

if (keyboard_check(vk_left) && (!instance_place(x - ghost_speed, y, obj_block) || !instance_place(x - ghost_speed, y, obj_moving_platform))) {
	    x += -ghost_speed;
	    image_xscale = -1;
	}
	if (keyboard_check(vk_right) && (!instance_place(x + ghost_speed, y, obj_block) || !instance_place(x + ghost_speed, y, obj_moving_platform))) {
	    x += ghost_speed;
	    image_xscale = 1;
	}

if (keyboard_check(vk_up)){
	if (instance_place(x, y+1, obj_block)) || (instance_place(x, y+1, obj_moving_platform)) || instance_place(x, y + 1, obj_movable_block) || place_meeting(x,y,obj_moving_platform){
	    vspeed = jump_height;
	}
}

if (instance_place(x, y+1, obj_block)) || (instance_place(x, y+1, obj_moving_platform)) || (instance_place(x, y + 1, obj_movable_block)) {
	gravity = 0;
} else {
	gravity = 0.10;
}

if (vspeed > 4){
	vspeed = 4;
}

if (place_meeting(x,y,obj_moving_platform)) {
	vspeed = 0;
	hspeed = 0;
}

if (instance_place(x, y+1, obj_moving_platform)) {
	y -= 2;
} 
