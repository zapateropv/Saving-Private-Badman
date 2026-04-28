if (room == rm_over) { 
    draw_set_font(fnt_ui);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var _cx = display_get_gui_width() / 2;
    var _cy = display_get_gui_height() / 2;

    // TITLE
    draw_text(_cx, _cy - 120, "YOU SAVED BADMAN");

    // SCORE
    draw_text(_cx, _cy - 60, "Final Score: " + string(global.score));

    // TIMER DISPLAY (Safe access to persistent obj_timer)
    if (instance_exists(obj_timer)) {
        var _total_seconds = floor(obj_timer.game_timer); 
        var _minutes = _total_seconds div 60;
        var _seconds = _total_seconds mod 60;

        var _s_str = string(_seconds);
        if (_seconds < 10) _s_str = "0" + _s_str;

        draw_text(_cx, _cy - 20, "Time Survived: " + string(_minutes) + ":" + _s_str);
    }

    // CREDITS
    draw_text(_cx, _cy + 40, "Credits");
    draw_text(_cx, _cy + 80, "Cubacub, Mark Spencer");
    draw_text(_cx, _cy + 110, "Kim, Jung Young");
    draw_text(_cx, _cy + 140, "Margate, Charl Kenneth");
	draw_text(_cx, _cy + 170, "Zapatero, Paul Vincent");
    // Reset draw state for other objects
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}