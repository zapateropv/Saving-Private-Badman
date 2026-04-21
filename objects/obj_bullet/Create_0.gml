// 1. SET MOVEMENT
speed = 8;           // The bullet moves 8 pixels every frame
image_angle = direction; // Rotates the sprite to match where it's flying

// 2. RANGE TRACKING
start_x = x;         // Saves the exact spot the bullet was born
start_y = y;         // Saves the exact spot the bullet was born
max_range = 100;     // The bullet will travel exactly 100 pixels