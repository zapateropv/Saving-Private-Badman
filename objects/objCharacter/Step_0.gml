// --- INPUT ---
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down)  - keyboard_check(vk_up);
var input_fire = mouse_check_button_pressed(mb_left); 

// --- FIRE LOGIC ---
// Trigger the attack based on which way we were last facing
if (input_fire) {
    image_index = 0;
    image_speed = 1; 

    switch(last_dir) {
        case "right": sprite_index = spr_atk_right; break;
        case "left":  sprite_index = spr_atk_left;  break;
        case "up":    sprite_index = spr_atk_up;    break;
        case "down":  sprite_index = spr_atk_down;  break;
    }
}

// --- COLLISION & MOVE ---
// We use a list of attack sprites to check if we are currently attacking
var is_attacking = (sprite_index == spr_atk_right || sprite_index == spr_atk_left || 
                    sprite_index == spr_atk_up    || sprite_index == spr_atk_down);

if (!is_attacking) {
    if (!place_meeting(x + h*moveSpd, y, objCol)) x += h * moveSpd;
    if (!place_meeting(x, y + v*moveSpd, objCol)) y += v * moveSpd;
}

// --- ANIMATION LOGIC ---
if (is_attacking) {
    // Return to the movement sheet once the specific attack animation ends
    if (image_index >= image_number - 1) {
        sprite_index = rifleman_old; 
    }
} else {
    // --- YOUR ORIGINAL MOVEMENT ANIMATION ---
    if (h != 0 || v != 0) {
        image_speed = 0.2;
        if (h > 0) {
            if (image_index < 16 || image_index > 23) image_index = 16;
            last_dir = "right";
        } else if (h < 0) {
            if (image_index < 8 || image_index > 15) image_index = 8;
            last_dir = "left";
        } else if (v > 0) {
            if (image_index < 0 || image_index > 7) image_index = 0;
            last_dir = "down";
        } else if (v < 0) {
            if (image_index < 24 || image_index > 31) image_index = 24;
            last_dir = "up";
        }
    } else {
        image_speed = 0;
        switch(last_dir) {
            case "down":  image_index = 0;  break;
            case "left":  image_index = 8;  break;
            case "right": image_index = 16; break;
            case "up":    image_index = 24; break;
        }
    }
}