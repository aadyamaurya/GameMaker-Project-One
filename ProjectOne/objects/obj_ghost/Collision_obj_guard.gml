/// @description Insert description here
// You can write your code in this editor
lives -= 1
if (lives > 0) {
	x = obj_spawn_point.x
	y = obj_spawn_point.y
} else {
    room_goto(rm_lose);
}