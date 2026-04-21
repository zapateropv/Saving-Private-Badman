if (instance_exists(objCharacter) && global.grid != -1) {
    if (mp_grid_path(global.grid, path, x, y, objCharacter.x, objCharacter.y, false)) {
        path_start(path, move_speed, path_action_stop, false);
    }
}
alarm[0] = 20; // Recalculate every 20 frames