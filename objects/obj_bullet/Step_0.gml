// Move in the set direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Keep sprite rotated correctly
image_angle = direction;
// 1. Wall Collision
if (place_meeting(x, y, objCol)) { 
    instance_destroy();
}

// 2. Range Limit
// Destroy bullet if it travels further than max_range
if (point_distance(start_x, start_y, x, y) > max_range) {
    instance_destroy();
}