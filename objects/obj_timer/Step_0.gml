
// Only run in level rooms
if (room == rm_level1 || room == rm_level2 || room == rm_level3) {

    game_timer -= delta_time / 1000000;

    if (game_timer <= 0) {

        game_timer = 30;

        global.target_x = 130;
        global.target_y = 64;
        global.target_room = room;

        if (instance_exists(objCharacter)) {
            objCharacter.hp = 6;
        }

        room_goto(room);
    }
}