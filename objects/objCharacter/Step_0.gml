// --- CAMERA ---
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var cam_x = x - cam_w * 0.5;
var cam_y = y - cam_h * 0.5;

cam_x = clamp(cam_x, 0, room_width - cam_w);
cam_y = clamp(cam_y, 0, room_height - cam_h);

camera_set_view_pos(cam, cam_x, cam_y);

// --- INPUT ---
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down)  - keyboard_check(vk_up);

// --- COLLISION & MOVE ---
if (!place_meeting(x + h*moveSpd, y, objCol)) x += h * moveSpd;
if (!place_meeting(x, y + v*moveSpd, objCol)) y += v * moveSpd;

// --- ANIMATION (32 frames, 8 per direction) ---
// DOWN 0–7, LEFT 8–15, RIGHT 16–23, UP 24–31
if (h != 0 || v != 0) {
    // Moving
    image_speed = 0.2;

    if (h > 0) {
        if (image_index < 16 || image_index > 23) image_index = 16;
        last_dir = "right";
    } else if (h < 0) {
        if (image_index < 8 || image_index > 15) image_index = 8;
        last_dir = "left";
    } else if (v > 0) {
        if (image_index < 0 || image_index > 7) image_index = 0;
        last_dir = "down";
    } else if (v < 0) {
        if (image_index < 24 || image_index > 31) image_index = 24;
        last_dir = "up";
    }

} else {
    // Idle
    image_speed = 0;
    switch(last_dir) {
        case "down":  image_index = 0; break;
        case "left":  image_index = 8; break;
        case "right": image_index = 16; break;
        case "up":    image_index = 24; break;
        default:     image_index = 0; break;
    }
}