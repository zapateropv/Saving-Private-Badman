if (can_be_hit) {

    audio_play_sound(snd_zombie_bite, 10, false);

    hp -= 1;
    can_be_hit = false;
    alarm[0] = 40; // invincibility
    image_blend = c_red;

    if (hp <= 0) {

        hp = 6;
	global.score = 0;
        if (instance_exists(obj_timer)) {
            obj_timer.game_timer = 60; 
        }

        global.target_x = 130; 
        global.target_y = 64;
        global.target_room = rm_home;

        if (room == rm_home) room_restart();
        else room_goto(rm_home);
    }
}