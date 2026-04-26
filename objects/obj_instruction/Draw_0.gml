// 1. Set the font (Must match the name in your Asset Browser)
draw_set_font(fnt_menu);

// 2. Set alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// 3. Set color
draw_set_color(c_white);

// 4. Draw the text
var _mid_x = room_width / 2;
var _mid_y = room_height / 2;

draw_text(floor(_mid_x), floor(_mid_y), 
    "--- CONTROLS ---\n\n" +
    "WASD : MOVE\n" +
    "LEFT MOUSE : SHOOT\n" +
    "R : RELOAD\n" +
    "F : INTERACT\n\n" 
);

// 5. Reset alignment (Good practice so other objects don't break)
draw_set_halign(fa_left);
draw_set_valign(fa_top);