// --- CAMERA ---
cam = camera_create_view(0, 0, 320, 180); // Camera size = game resolution
camera_set_view_pos(cam, 0, 0);           // Start at 0,0
camera_set_view_target(cam, id);          // Follow player
camera_set_view_speed(cam, 0.5, 0.5);     // Optional smooth follow

// --- MOVEMENT ---
moveSpd = 1;

// --- ANIMATION ---
image_speed = 0;

// --- LAST FACING DIRECTION ---
last_dir = "down"; // Initialize so idle works