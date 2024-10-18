/// @description Insert description here
// You can write your code in this editor
lives -= 1
audio_play_sound(snd_death, 1, false);
if (lives > 0) {
	x = obj_spawn_point.x
	y = obj_spawn_point.y
} else {
    room_goto(rm_lose);
}