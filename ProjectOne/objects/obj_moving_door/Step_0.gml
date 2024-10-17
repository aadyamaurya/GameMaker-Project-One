/// @description Insert description here
// You can write your code in this editor
if (obj_door_button.pressed = true && !(door_open = true)) {
	sprite_index = spr_moving_door_opening;
	door_open = true;
}
if (obj_door_button.pressed = false && !(door_open = false)) {
	sprite_index = spr_moving_door_closing;
	door_open = false;
}