// 1. REPEL LOGIC (Keep your existing improved with loop)
var push_speed = 0.4; 
with (obj_zombie1) {
    if (id != other.id) {
        if (point_distance(x, y, other.x, other.y) < 18) { 
            var dir = point_direction(other.x, other.y, x, y);
            x += lengthdir_x(push_speed, dir);
            y += lengthdir_y(push_speed, dir);
        }
    }
}

// 2. CALCULATE MOVEMENT
var move_x = x - last_x;
var move_y = y - last_y;

// 3. ANIMATION & ATTACK LOGIC
if (is_attacking) {
    image_speed = 0.3;
    // We use "or" (||) so the code knows to STAY in the attack sprite
    if (sprite_index == spr_zombie_left || sprite_index == spr_zombie_atk_left) sprite_index = spr_zombie_atk_left;
    else if (sprite_index == spr_zombie_right || sprite_index == spr_zombie_atk_right) sprite_index = spr_zombie_atk_right;
    else if (sprite_index == spr_zombie_up || sprite_index == spr_zombie_atk_up) sprite_index = spr_zombie_atk_up;
    else if (sprite_index == spr_zombie_down || sprite_index == spr_zombie_atk_down) sprite_index = spr_zombie_atk_down;
} else {
    // 2. ONLY WALK IF NOT ATTACKING
    if (abs(move_x) > 0.1 || abs(move_y) > 0.1) {
        image_speed = 0.2;
        if (abs(move_x) > abs(move_y)) {
            sprite_index = (move_x > 0) ? spr_zombie_right : spr_zombie_left;
        } else {
            sprite_index = (move_y > 0) ? spr_zombie_down : spr_zombie_up;
        }
    } else {
        image_speed = 0;
        image_index = 0;
    }
}

// 4. TRIGGER ATTACK
if (instance_exists(objCharacter) && !is_attacking) {
    if (place_meeting(x, y, objCharacter)) {
        is_attacking = true;   
        image_index = 0;       
        path_end();            
    }
}

last_x = x;
last_y = y;