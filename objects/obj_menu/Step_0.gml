// Start game
if (keyboard_check_pressed(vk_enter)) {
    room_goto(Room1);
}

// Exit game
if (keyboard_check_pressed(vk_escape)) {
    game_end();
}