if (can_be_hit) {
    // Play the bite sound effect
    // Priority: 10 (Higher numbers take priority if too many sounds play at once)
    // Loop: false (We only want it to play once per hit)
    audio_play_sound(snd_zombie_bite, 10, false);

    hp -= 1;           // This removes exactly HALF a heart
    can_be_hit = false;
    alarm[0] = 40;     // Stay invincible for a moment
    image_blend = c_red; 
    
   
    
if (hp <= 0) {
    // 1. Reset health
    hp = 6; 

    // 2. Reset timer if exists
    if (instance_exists(obj_timer)) {
        obj_timer.game_timer = 60; 
    }

    // 3. Set respawn target
    global.target_x = 130; 
    global.target_y = 64;
    global.target_room = rm_home;

    // 4. Go to room (restart if same)
    if (room == rm_home) {
        room_restart();
    } else {
        room_goto(rm_home);
    }
}
}