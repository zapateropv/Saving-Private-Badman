if (path_index != -1) {
    var _base_frame = 0;
    var _anim_length = 6; // Most of your animations are 6 frames

    // 1. Determine Direction & Base Frame
    if (direction >= 45 && direction < 135) {
        // UP (Frames 13-22 based on your 8-17 count)
        // Adjusting to start at frame 12 (0-indexed)
        _base_frame = 12; 
        _anim_length = 10; // Up has 10 frames (8-17)
        image_xscale = 1;
    } 
    else if (direction >= 225 && direction < 315) {
        // DOWN (Frames 1-6)
        _base_frame = 0;
        _anim_length = 6;
        image_xscale = 1;
    } 
    else if (direction >= 135 && direction < 225) {
        // LEFT (Frames 7-12)
        _base_frame = 6;
        _anim_length = 6;
        image_xscale = 1;
    } 
    else {
        // RIGHT (Flip the Left frames 7-12)
        _base_frame = 6;
        _anim_length = 6;
        image_xscale = -1; 
    }

    // 2. Animate within the specific frame range
    // Adjust 100 to change walking speed (lower is faster)
    image_index = _base_frame + (floor(current_time / 100) % _anim_length);
    
} else {
    // Stop animation when standing still
    image_index = image_index; // Keep last frame
    image_speed = 0;
}