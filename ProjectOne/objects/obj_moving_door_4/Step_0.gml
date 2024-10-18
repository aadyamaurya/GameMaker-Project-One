/// @description Insert description here
// You can write your code in this editor
if (obj_door_button_4.pressed = true && !(door_open = true)) {
	sprite_index = spr_moving_door_opening;
	audio_play_sound(snd_door_squeak, 1, false);
	door_open = true;
}
if (obj_door_button_4.pressed = false && !(door_open = false)) {
	sprite_index = spr_moving_door_closing;
	audio_play_sound(snd_door_squeak, 1, false);
	door_open = false;
}