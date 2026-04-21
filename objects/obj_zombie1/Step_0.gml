var _other = instance_place(x, y, obj_zombie1);



if (_other != noone && _other.id != id) {

    var repel_dir = point_direction(_other.x, _other.y, x, y);

    var push = 0.5;

    x += lengthdir_x(push, repel_dir);

    y += lengthdir_y(push, repel_dir);

}





// -------------------------------

// 2. CALCULATE MOVEMENT (FIX)

// -------------------------------

var move_x = x - last_x;

var move_y = y - last_y;





// -------------------------------

// 3. ANIMATION (WORKS)

// -------------------------------

if (path_index != -1 && (abs(move_x) > 0.01 || abs(move_y) > 0.01)) {



    image_speed = 0.2;



    if (abs(move_x) > abs(move_y)) {

        if (move_x > 0) sprite_index = spr_zombie_right;

        else sprite_index = spr_zombie_left;

    } else {

        if (move_y > 0) sprite_index = spr_zombie_down;

        else sprite_index = spr_zombie_up;

    }



} else {

    image_speed = 0;

    image_index = 0;

}





// -------------------------------

// 4. SAVE POSITION

// -------------------------------

last_x = x;

last_y = y;





// -------------------------------

// 5. HIT TIMER

// -------------------------------

if (hit_timer > 0) {

    hit_timer--;

    if (hit_timer <= 0) image_blend = c_white;

}





// -------------------------------

// 6. ATTACK PLAYER

// -------------------------------

if (instance_exists(objCharacter)) {

    if (place_meeting(x, y, objCharacter)) {

        if (alarm[1] <= 0) {

            with (objCharacter) {

                hp -= 1;

            }

            alarm[1] = 60;

        }

    }

}