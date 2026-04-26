// ONLY this object (zombie 3) will run this code when it dies
instance_create_depth(x, y, 0, obj_key);

// Give the time bonus (if you want all zombies to give time, put this in the others too)
if (instance_exists(obj_timer)) {
    obj_timer.game_timer += obj_timer.time_bonus;
}

path_delete(path);