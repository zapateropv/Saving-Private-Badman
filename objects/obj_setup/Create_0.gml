// 1. Define cell size (match your tile or wall size)
var _s = 16; 

// 2. Create the GLOBAL grid
global.grid = mp_grid_create(0, 0, room_width / _s, room_height / _s, _s, _s);

// 3. Add your free-sized walls
mp_grid_add_instances(global.grid, objCol, false);