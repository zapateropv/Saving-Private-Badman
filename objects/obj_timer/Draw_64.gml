// Only draw corner HUD in level rooms (not on Game Over screen)
if (room == rm_level1 || room == rm_level2 || room == rm_level3) {
    var _mins = floor(game_timer / 60);
    var _secs = floor(game_timer % 60);

    // Reliable padding for the "01" seconds issue
    var _s_str = string(_secs);
    if (_secs < 10) _s_str = "0" + _s_str;

    draw_set_font(fnt_ui);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    // Y set to 120 so it stays clear of your "BACK" button
    draw_text(20, 120, "TIME LEFT: " + string(_mins) + ":" + _s_str);
}