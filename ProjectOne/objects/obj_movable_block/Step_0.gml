if (!instance_place(x, y + 1, obj_block) && !instance_place(x, y + 1, obj_movable_block) && !instance_place(x, y + 1, obj_moving_platform)) {
    vspeed += 0.25; 
} else {
    vspeed = 0; 
}

y += vspeed;

if (instance_place(x, y, obj_block) || instance_place(x, y, obj_movable_block) || instance_place(x, y, obj_moving_platform)) {
    vspeed = 0;
	hspeed = 0;
}

if (vspeed > 12) {
    vspeed = 12;
}

if ((place_meeting(x-4,y,obj_ghost)) && (keyboard_check(vk_right)) && !(place_meeting(x,y+1,obj_ghost))){
x+=4;
}
if ((place_meeting(x+4,y,obj_ghost)) && (keyboard_check(vk_left)) && !(place_meeting(x,y+1,obj_ghost))){
x-=4;
}

if (place_meeting(x,y - 1,obj_moving_platform)) {
	y -= 4
}

