// --- 1. PLAY IMPACT SOUND ---
// We play this first so it triggers the moment the collision happens
audio_play_sound(snd_bullet_impact, 10, false);

// --- 2. EFFECTS ---
// Create the smoke effect at the bullet's position
instance_create_layer(x, y, layer, obj_smoke_hit);

// --- 3. DAMAGE LOGIC ---
// "other" refers to the Zombie the bullet just hit
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
// Destroy the bullet so it doesn't hit the zombie multiple times
instance_destroy();