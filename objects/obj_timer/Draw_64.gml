// Check the current room
switch (room) {
    case rm_level1:
    case rm_level2:
    case rm_level3:
        // Logic for calculating time
        var _mins = floor(game_timer / 60);
        var _secs = floor(game_timer % 60);

        // This ensures there are at least 2 digits for seconds
        var _time_string = string(_mins) + ":" + string_replace_all(string_format(_secs, 2, 0), " ", "0");

        // Draw the text
        draw_set_color(c_white); // Good practice to set color before drawing text
        draw_text(20, 80, "TIME LEFT: " + _time_string);
    break;

    default:
        // Do nothing for rm_menu and rm_over
    break;
}