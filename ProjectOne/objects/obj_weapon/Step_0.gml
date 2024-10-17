/// @description Insert description here
// You can write your code in this editor
if (obj_ghost.weapon_active = false) {
	instance_destroy();
}

if (obj_ghost.image_xscale = -1) {
	x = obj_ghost.x - 7;
	image_xscale = obj_ghost.image_xscale;
} else {
	x = obj_ghost.x + 7;
	image_xscale = obj_ghost.image_xscale;
}
y = obj_ghost.y - 5 ;
