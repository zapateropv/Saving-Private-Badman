if (global.target_room == room) {
    x = global.target_x;
    y = global.target_y;

    show_debug_message("Snapped to spawn: " + string(x) + "," + string(y));

    // Clear AFTER using
    global.target_room = noone;
}