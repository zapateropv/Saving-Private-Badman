// 1. Initialize the global variable so zombies can find it
grid = -1; 

// 2. Set precision. Smaller number = more accurate but uses more memory.
// Since you have custom stretched walls, 8 is usually the sweet spot.
var _precision = 8; 

// 3. Create the grid
global.grid = mp_grid_create(0, 0, room_width / _precision, room_height / _precision, _precision, _precision);

// 4. Add your custom-sized walls to the grid
// 'false' means it uses the precise bounding box of your stretched wall
mp_grid_add_instances(global.grid, objCol, false);

// 5. Set depth very low so the debug draw (if you use it) stays on top
depth = -10000;
// 1. Add the actual walls
mp_grid_add_instances(global.grid, objCol, false);

// 2. Add a "Buffer" so they don't hug the edges
// This marks cells around the wall as 'forbidden' too
with(objCol) {
    // This slightly 'fattens' the wall in the eyes of the AI
    mp_grid_add_rectangle(global.grid, bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom+4);
}