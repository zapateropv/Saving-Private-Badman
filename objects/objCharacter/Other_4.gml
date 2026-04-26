/// Room Start Event in objCharacter
if (variable_global_exists("target_room") && global.target_room == room) {
    
    // Only snap if we aren't already at the right spot
    if (x != global.target_x || y != global.target_y) {
        x = global.target_x;
        y = global.target_y;
    }
    
    global.target_room = -1; // Clear the target
    show_debug_message("Room Start: Snapped to " + string(x) + "," + string(y));
}