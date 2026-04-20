// 1. Repel Logic (Keep this at the top)
var _other = instance_place(x, y, obj_zombie1);
if (_other != noone) {
    var _repel_dir = point_direction(_other.x, _other.y, x, y);
    x += lengthdir_x(1, _repel_dir);
    y += lengthdir_y(1, _repel_dir);
}

// 2. Animation Logic
// Check if the zombie is actually moving on a path
if (path_index != -1) {
    image_speed = 0.2;
    
    // 'direction' is set automatically by path_start
    var _dir = direction; 

    // Determine the animation state based on direction
    var _anim_state = 0; 
    if (_dir > 45 && _dir <= 135)       _anim_state = 3; // UP
    else if (_dir > 135 && _dir <= 225) _anim_state = 1; // LEFT
    else if (_dir > 225 && _dir <= 315) _anim_state = 0; // DOWN
    else                                _anim_state = 2; // RIGHT

    // Assuming 8 frames per direction (0-7, 8-15, 16-23, 24-31)
    var _start_f = _anim_state * 8;
    var _end_f   = _start_f + 7;

    // Only reset the frame if we just changed directions
    if (image_index < _start_f || image_index > _end_f) {
        image_index = _start_f;
    }
} else {
    image_speed = 0;
    image_index = 0; // Idle frame
}

// 3. Hit Timer (Color reset)
if (hit_timer > 0) {
    hit_timer--;
    if (hit_timer <= 0) image_blend = c_white;
}