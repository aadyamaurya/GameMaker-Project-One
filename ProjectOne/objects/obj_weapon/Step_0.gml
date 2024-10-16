/// @description Insert description here
// You can write your code in this editor
if (obj_ghost.weapon_active = false) {
	instance_destroy();
}

if (instance_exists(obj_ghost)) {
	if (obj_ghost.image_xscale = -1) {
		x = obj_ghost.x - 75;
	} else {
		x = obj_ghost.x + 75;
	}
    y = obj_ghost.y ;
}