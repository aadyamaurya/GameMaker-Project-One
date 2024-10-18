/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_movable_block) || place_meeting(x,y,obj_ghost)) {
	pressed = true;
	sprite_index = spr_door_button_pressed;
} else {
	pressed = false;
	sprite_index = spr_door_button;
}