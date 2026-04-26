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
    // 1. Reset health and timer
    hp = 6; 
    if (instance_exists(obj_timer)) {
        obj_timer.game_timer = 30; 
    }

    // 2. Set the target global variables (for other rooms)
    global.target_x = 130; 
    global.target_y = 64;
    global.target_room = Room1;

    // 3. FORCE SNAP IMMEDIATELY (This fixes the "Same Room" bug)
    x = 130;
    y = 64;

    // 4. Go to Room1
    if (room == Room1) {
        room_restart(); // If already in Room1, restart it properly
    } else {
        room_goto(Room1); // If in another room, travel back
    }
}
}