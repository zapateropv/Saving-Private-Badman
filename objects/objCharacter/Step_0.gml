// --- INPUT ---
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var input_fire = mouse_check_button_pressed(mb_left);

// --- SHOOT ---
if (input_fire && can_shoot && !is_attacking && !is_reloading && ammo > 0) {

    is_attacking = true;
    can_shoot = false;

    audio_play_sound(snd_gunshot, 10, false);

    image_index = 0;
    image_speed = 1;

    var dir = 0;
    var offset_x = 0;
    var offset_y = 0;

    switch (last_dir) {
        case "right": sprite_index = spr_atk_right; dir = 0;   offset_x = 12; break;
        case "left":  sprite_index = spr_atk_left;  dir = 180; offset_x = -12; break;
        case "up":    sprite_index = spr_atk_up;    dir = 90;  offset_y = -12; break;
        case "down":  sprite_index = spr_atk_down;  dir = 270; offset_y = 12;  break;
    }

    var b = instance_create_layer(x + offset_x, y + offset_y, "ins_character", obj_bullet);
    b.direction = dir;
    b.image_angle = dir;
    b.speed = 5;

    ammo--;
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
    exit;
}

// --- MOVEMENT ---
if (h != 0 || v != 0) {

    var dir_move = point_direction(0, 0, h, v);
    var hsp = lengthdir_x(moveSpd, dir_move);
    var vsp = lengthdir_y(moveSpd, dir_move);

    if (!place_meeting(x + hsp, y, objCol)) x += hsp;
    if (!place_meeting(x, y + vsp, objCol)) y += vsp;

    image_speed = 0.2;

    if (h > 0) { last_dir = "right"; if (image_index < 16 || image_index > 23) image_index = 16; }
    else if (h < 0) { last_dir = "left"; if (image_index < 8 || image_index > 15) image_index = 8; }
    else if (v > 0) { last_dir = "down"; if (image_index < 0 || image_index > 7) image_index = 0; }
    else if (v < 0) { last_dir = "up"; if (image_index < 24 || image_index > 31) image_index = 24; }

} else {

    image_speed = 0;

    switch (last_dir) {
        case "down":  image_index = 0;  break;
        case "left":  image_index = 8;  break;
        case "right": image_index = 16; break;
        case "up":    image_index = 24; break;
    }
}

// --- INTERACT ---
if (keyboard_check_pressed(ord("F"))) {
    var _npc = instance_nearest(x, y, obj_badman);

    if (_npc != noone && distance_to_object(_npc) < 10) {
        with (_npc) {
            if (!is_talking) {
                is_talking = true;
                text_page = 0;
            } else {
                text_page++;
                if (text_page >= array_length(text_lines)) {
                    is_talking = false;
                }
            }
        }
    }
}

// --- RELOAD ---
if (keyboard_check_pressed(ord("R"))) {
    if (ammo < max_ammo && !is_reloading) {
        is_reloading = true;
        can_shoot = false;

        alarm[1] = reload_time; // ✅ FIXED

        audio_play_sound(snd_reload, 10, false);
    }
}