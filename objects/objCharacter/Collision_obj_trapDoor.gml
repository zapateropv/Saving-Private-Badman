// 1. Check if zombies are gone
var enemies_cleared = !instance_exists(obj_zombie1) && !instance_exists(obj_zombie2) && !instance_exists(obj_zombie3);

if (enemies_cleared) {
    
    // 2. Logic for transitioning - using a switch statement is cleaner for room checks
    switch (room) {
        case Room1:
            global.target_room = Room2;
            global.target_x = 266;
            global.target_y = 38;
            break;
            
        case Room2:
            global.target_room = Room4;
            global.target_x = 268;
            global.target_y = 39;
            break;
            
        case Room4:
            global.target_room = Room5;
            global.target_x = 28;
            global.target_y = 92;
            break;
            
        default:
            show_debug_message("Room not recognized in transition logic!");
            exit; // Stop the code if the room isn't listed
            break;
    }

    // 3. Move to the room
    show_debug_message("All clear! Moving to: " + string(global.target_room));
    room_goto(global.target_room);

} else {
    // This tells you EXACTLY which zombie is still alive in the Output log (bottom of GMS2)
    if (instance_exists(obj_zombie1)) show_debug_message("obj_zombie1 still exists");
    if (instance_exists(obj_zombie2)) show_debug_message("obj_zombie2 still exists");
    if (instance_exists(obj_zombie3)) show_debug_message("obj_zombie3 still exists");
}