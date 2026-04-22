if (can_be_hit) {
    hp -= 1;           // This removes exactly HALF a heart
    can_be_hit = false;
    alarm[0] = 40;     // Stay invincible for a moment
    image_blend = c_red; 
    
    if (hp <= 0) room_goto(Room1)
}