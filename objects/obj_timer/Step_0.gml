// 1. Only count down if NOT in Room1 AND no transition is happening
if (room != Room1 && global.target_room == -1) {
    if (game_timer > 0) {
        game_timer -= 1 / game_get_speed(gamespeed_fps);
    } else {
        // TIME OUT - Force Reset
        game_timer = 30; 
        global.target_x = 130;
        global.target_y = 64;
        global.target_room = Room1;

        if (instance_exists(objCharacter)) { objCharacter.hp = 6; }
        room_goto(Room1);
    }
}