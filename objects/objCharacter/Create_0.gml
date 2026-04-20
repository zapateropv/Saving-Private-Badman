// --- CAMERA ---
cam = camera_create_view(0, 0, 320, 180);
camera_set_view_pos(cam, 0, 0);
camera_set_view_target(cam, id);
camera_set_view_speed(cam, 0.5, 0.5);

// --- MOVEMENT ---
moveSpd = 1;

// --- ANIMATION ---
image_speed = 0;

// --- LAST FACING DIRECTION ---
last_dir = "down";

// --- STATE ---
state = "idle";
attack_start = 0;
attack_end = 7;