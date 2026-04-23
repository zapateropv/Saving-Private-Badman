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
    x = 164; // Replace with your starting X
    y = 80; // Replace with your starting Y
    hp = 6;  // Reset health so you don't die instantly again
    room_goto(Room1);
}
}