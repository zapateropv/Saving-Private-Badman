// --- INPUT ---
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down)  - keyboard_check(vk_up);
var input_fire = mouse_check_button_pressed(mb_left);

// --- START ATTACK ---
if (input_fire && can_shoot && !is_attacking) {
    is_attacking = true;
    can_shoot = false;

    image_index = 0;
    image_speed = 1;

    var dir = 0;

    switch (last_dir) {
        case "right": sprite_index = spr_atk_right; dir = 0;   break;
        case "left":  sprite_index = spr_atk_left;  dir = 180; break;
        case "up":    sprite_index = spr_atk_up;    dir = 90;  break;
        case "down":  sprite_index = spr_atk_down;  dir = 270; break;
    }

    // --- BULLET OFFSET (FIXED) ---
    var offset_x = 0;
    var offset_y = 0;

    switch (last_dir) {
        case "right": offset_x = 12;  offset_y = 0;   break;
        case "left":  offset_x = -12; offset_y = 0;   break;
        case "up":    offset_x = 0;   offset_y = -12; break;
        case "down":  offset_x = 0;   offset_y = 12;  break;
    }

    // --- CREATE BULLET ---
    var b = instance_create_layer(x + offset_x, y + offset_y, "Instances_3", obj_bullet);
    b.direction = dir;
    b.image_angle = dir;
    b.speed = 5;
}

// --- ATTACK STATE ---
if (is_attacking) {
    if (image_index >= image_number - 1) {
        is_attacking = false;
        can_shoot = true;

        sprite_index = rifleman_old;
        image_speed = 0;
        image_index = 0;
    }

    exit; // stop movement while attacking
}

// --- MOVEMENT ---
if (h != 0 || v != 0) {
    var dir_move = point_direction(0, 0, h, v);
    var hsp = lengthdir_x(moveSpd, dir_move);
    var vsp = lengthdir_y(moveSpd, dir_move);

    if (!place_meeting(x + hsp, y, objCol)) x += hsp;
    if (!place_meeting(x, y + vsp, objCol)) y += vsp;

    image_speed = 0.2;

    if (h > 0)      { image_index = 16; last_dir = "right"; }
    else if (h < 0) { image_index = 8;  last_dir = "left";  }
    else if (v > 0) { image_index = 0;  last_dir = "down";  }
    else if (v < 0) { image_index = 24; last_dir = "up";    }

} else {
    // --- IDLE ---
    image_speed = 0;

    switch (last_dir) {
        case "down":  image_index = 0;  break;
        case "left":  image_index = 8;  break;
        case "right": image_index = 16; break;
        case "up":    image_index = 24; break;
    }
}