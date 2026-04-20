if (can_be_hit) {
    hp -= 1;           // Removes exactly HALF a heart
    can_be_hit = false;
    alarm[0] = 40;     // Invincibility time
    image_blend = c_red; 
    
    if (hp <= 0) room_restart(); 
}