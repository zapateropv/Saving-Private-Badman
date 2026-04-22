if (instance_exists(objCharacter) && global.grid != -1) {
    if (!is_attacking) { // CRITICAL: Only pathfind if not attacking
        var target_x = objCharacter.x + irandom_range(-8, 8);
        var target_y = objCharacter.y + irandom_range(-8, 8);
        
        if (mp_grid_path(global.grid, path, x, y, target_x, target_y, true)) {
            path_start(path, move_speed, path_action_continue, true);
        }
    }
}
alarm[0] = 15; // Don't set this too low (like 1 or 2) or it will flicker!