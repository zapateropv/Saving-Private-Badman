// --- 1. PLAY IMPACT SOUND ---
audio_play_sound(snd_bullet_impact, 10, false);

// --- 2. EFFECTS ---
instance_create_layer(x, y, layer, obj_smoke_hit);

// --- 3. DAMAGE & SPAWN LOGIC ---
with (other) {
    hp -= 1;
    
    // Check if the zombie died from this hit
    if (hp <= 0) {
        // Spawn the key at the zombie's current position
        instance_create_layer(x, y, layer, obj_key);
        
        // Destroy the zombie
        instance_destroy();
    } else {
        // If still alive, just flash red
        image_blend = c_red;
        alarm[1] = 5;
    }
}

// --- 4. DESTROY BULLET ---
instance_destroy();