if (instance_exists(objCharacter) && !is_undefined(global.grid)) {

    if (!is_attacking) {

        var tx = objCharacter.x;
        var ty = objCharacter.y;

        if (mp_grid_path(global.grid, path, x, y, tx, ty, true)) {
            path_start(path, move_speed, path_action_continue, false);
        }
    }
}

// Loop
alarm[0] = 15;