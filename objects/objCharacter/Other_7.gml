// If we were just attacking, return to normal
if (sprite_index == spr_atk_right || sprite_index == spr_atk_left || 
    sprite_index == spr_atk_up    || sprite_index == spr_atk_down) {

    can_shoot = true;
    sprite_index = rifleman_old;
    image_index = 0; // Reset frame to start of walk cycle
}