
// font + style
draw_set_font(fnt_over);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// main title
draw_text(display_get_gui_width()/2, 120, "MISSION COMPLETE");

// subtitle
draw_text(display_get_gui_width()/2, 180, "Thanks for playing!");

// credits
draw_text(display_get_gui_width()/2, 260, "Members:");
draw_text(display_get_gui_width()/2, 300, "Cubacub, Mark Spencer");
draw_text(display_get_gui_width()/2, 340, "Kim, Jung Young");
draw_text(display_get_gui_width()/2, 380, "Zapatero, Paul Vincent");