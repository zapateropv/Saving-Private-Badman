// 1. Repel Logic (Stop zombies from stacking)
var _other = instance_place(x, y, obj_zombie1);
if (_other != noone) {
    var _repel_dir = point_direction(_other.x, _other.y, x, y);
    x += lengthdir_x(1, _repel_dir);
    y += lengthdir_y(1, _repel_dir);
}

// 2. Animation Logic (Sprite Swapping)
if (path_index != -1) {
    image_speed = 0.2;
    
    // 'direction' is set automatically by path_start
    var _dir = direction; 

    // Swap the sprite based on direction
    if (_dir > 45 && _dir <= 135) {
        sprite_index = spr_zombie_up;
    } 
    else if (_dir > 135 && _dir <= 225) {
        sprite_index = spr_zombie_left;
    } 
    else if (_dir > 225 && _dir <= 315) {
        sprite_index = spr_zombie_down;
    } 
    else {
        sprite_index = spr_zombie_right;
    }
} else {
    image_speed = 0;
    image_index = 0; // Standing still frame
}

// 3. Hit Timer (Color reset)
if (hit_timer > 0) {
    hit_timer--;
    if (hit_timer <= 0) image_blend = c_white;
}

// 6. ATTACK PLAYER LOGIC
if (instance_exists(objCharacter)) {
    // Check if the zombie is touching the player
    if (place_meeting(x, y, objCharacter)) {
        
        // We use a timer so it doesn't kill the player in 1 frame
        if (alarm[1] <= 0) { 
            with (objCharacter) {
                hp -= 1; // Or whatever your health variable is
                // Add a red flash or screen shake here if you have one!
            }
            alarm[1] = 60; // Wait 1 second (60 frames) before attacking again
        }
    }
}