// Ammo UI (top-right, larger font)

draw_set_font(fnt_ui); // use your bigger font asset
draw_set_color(c_white);

var _gui_w = display_get_gui_width();

var _x = _gui_w - 20;
var _y = 20;

draw_set_halign(fa_right);
draw_set_valign(fa_top);

// ammo display
draw_text(_x, _y, "Ammo: " + string(ammo) + " / " + string(max_ammo));

// reload warning
if (is_reloading) {
    draw_set_color(c_red);
    draw_text(_x, _y + 30, "RELOADING...");
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);