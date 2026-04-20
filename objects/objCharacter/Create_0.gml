// Camera Setup
cam = camera_create_view(0, 0, 320, 180);
camera_set_view_pos(cam, 0, 0);
camera_set_view_target(cam, id);

// Variables
moveSpd = 0.7;
last_dir = "down";

can_shoot = true;
is_attacking = false;

image_speed = 0;