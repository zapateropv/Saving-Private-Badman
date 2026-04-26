// --- 1. PLAY IMPACT SOUND ---
audio_play_sound(snd_bullet_impact, 10, false);

// --- 2. EFFECTS ---
instance_create_layer(x, y, layer, obj_smoke_hit);

// --- 3. DAMAGE LOGIC ---
with(other) {
    hp -= 1; 
    
    if (hp <= 0) {
        // Updated to your actual object name: obj_timer
        if (instance_exists(obj_timer)) {
            obj_timer.game_timer += obj_timer.time_bonus;
        }
        
        instance_destroy(); 
    } else {
        image_blend = c_red; 
        alarm[1] = 5;        
    }
}

// --- 4. DESTROY BULLET ---
instance_destroy();