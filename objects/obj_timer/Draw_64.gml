var _mins = floor(game_timer / 60);
var _secs = floor(game_timer % 60);

// This ensures there are at least 2 digits for seconds, padding with a 0
var _time_string = string(_mins) + ":" + string_replace_all(string_format(_secs, 2, 0), " ", "0");

draw_text(20, 80, "TIME LEFT: " + _time_string);