// SCORE UI (top-right)
if (room != rm_over  && room != rm_menu) {

    draw_set_font(fnt_ui);
    draw_set_color(c_white);

    var _gui_w = display_get_gui_width();

    var _x = _gui_w - 20;
    var _y = 80; // below ammo/reload (which is drawn by objCharacter)

    draw_set_halign(fa_right);
    draw_set_valign(fa_top);

    draw_text(_x, _y, "Score: " + string(global.score));

    // reset draw settings (important!)
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}