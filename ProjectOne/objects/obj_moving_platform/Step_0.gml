y += move_speed;
if (y > y_start + move_range || y < y_start - move_range) {
    move_speed = -move_speed;
}

