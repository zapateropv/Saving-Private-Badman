// Initialize the grid
global.grid = -1; 

// Use a smaller cell size (8) so it fits your custom-stretched walls better
var _cell_size = 8; 

// Create the grid
global.grid = mp_grid_create(0, 0, room_width / _cell_size, room_height / _cell_size, _cell_size, _cell_size);

// Add your stretched walls (False = uses the stretched bounding box)
mp_grid_add_instances(global.grid, objCol, false);