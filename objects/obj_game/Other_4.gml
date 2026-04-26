// =======================
// ✅ GRID SYSTEM (FIXED)
// =======================

// Destroy old grid (important on restart)
if (!is_undefined(global.grid)) {
    if (global.grid != -1) {
        mp_grid_destroy(global.grid);
    }
}

// Grid precision
var _precision = 6;

// Create grid
global.grid = mp_grid_create(
    0, 0,
    room_width div _precision,
    room_height div _precision,
    _precision, _precision
);

// Add walls
mp_grid_add_instances(global.grid, objCol, false);

// Add buffer so zombies don't hug walls
with (objCol) {
    mp_grid_add_rectangle(
        global.grid,
        bbox_left - 4,
        bbox_top - 4,
        bbox_right + 4,
        bbox_bottom + 4
    );
}


// =======================
// 🎥 CAMERA (YOUR CODE)
// =======================

if (instance_exists(objCharacter)) {
    view_enabled = true;
    view_visible[0] = true;

    camera_set_view_size(view_camera[0], 250, 150);
    camera_set_view_target(view_camera[0], objCharacter);
    camera_set_view_border(view_camera[0], 1280, 720);
}