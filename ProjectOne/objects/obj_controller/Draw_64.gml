/// @description Insert description here
// You can write your code in this editor
if (room = rm_game) {
    draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(35, 5, 185, 125, false);
draw_set_alpha(1);


    for (var i = 0; i < lives; i++) {
        draw_sprite(spr_heart, 0, 50 + 34 * i, 15);
    }

    draw_set_colour(c_white);

    draw_set_halign(fa_left);
    draw_text(55, 65, "Score: " + string(score));
	draw_text(55, 95, "Candy: " + string(candy));
}

if ((room == rm_win || room == rm_lose)) {
    var center_x = room_width / 2;
    var center_y = room_height / 2

 
    var rect_width = 230; 
    var rect_height = 120; 

    var rect_x1 = center_x - rect_width / 2;
    var rect_y1 = center_y - rect_height / 2;
    var rect_x2 = center_x + rect_width / 2;
    var rect_y2 = center_y + rect_height / 2;

    draw_set_colour(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);
    draw_set_alpha(1);

    draw_set_colour(c_white);
    draw_set_halign(fa_center);

    draw_text(center_x, center_y - 30, "Score: " + string(score));
    draw_text(center_x, center_y + 10, "Candy: " + string(candy));
}
