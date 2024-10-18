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
    var rect_width = 230; 
    var rect_height = 120; 

    // Calculate offsets for moving the rectangle
    var offset_x = room_width / 4;  // 1/4 of screen width
    var offset_y = room_height / 4; // 1/4 of screen height

    // Calculate rectangle position for the adjusted position
    var rect_x1 = room_width - rect_width - offset_x; // 1/4 of screen width to the left
    var rect_y1 = offset_y;                            // 1/4 of screen height down
    var rect_x2 = room_width - offset_x;              // Same x-offset as x1
    var rect_y2 = rect_y1 + rect_height;              // Height of the rectangle

    // Draw semi-transparent background rectangle
    draw_set_colour(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);
    draw_set_alpha(1);

    // Set text color and alignment
    draw_set_colour(c_white);
    draw_set_halign(fa_right);  // Align text to the right

    // Draw score and candy in the adjusted position
    draw_text(rect_x2 - 10, rect_y1 + 30, "Score: " + string(score));  // 30 pixels down from the top edge
    draw_text(rect_x2 - 10, rect_y1 + 60, "Candy: " + string(candy));  // 60 pixels down from the top edge
}




