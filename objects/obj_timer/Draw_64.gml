draw_set_color(c_white);

// I increased the second number (Y) from 20 to 80
// Adjust 80 higher if it is still touching the hearts
draw_text(20, 80, "TIME LEFT: " + string(ceil(game_timer)));