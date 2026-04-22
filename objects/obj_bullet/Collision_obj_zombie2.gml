// 1. Create the smoke effect at the bullet's position
instance_create_layer(x, y, layer, obj_smoke_hit);

// 2. Deal damage to the zombie
with(other) {
    hp -= 1; 
    
    if (hp <= 0) {
        instance_destroy(); // Kill zombie if HP is 0
    } else {
        image_blend = c_red; // Flash red if still alive
        alarm[1] = 5;        // Reset color in 5 frames
    }
}

other.image_blend = c_red;
other.hit_timer = 5; // flash duration

instance_destroy(); // destroy bullet
// 3. Destroy the bullet
instance_destroy();