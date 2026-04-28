// =======================
// 👁️ GRID VISUALIZER
// =======================
/*
// 1. Set the transparency so you can still see your sprites underneath
draw_set_alpha(0.3); 

// 2. This built-in function draws the mp_grid
// It draws RED for blocked (walls) and GREEN for walkable paths
if (!is_undefined(global.grid) && global.grid != -1) {
    mp_grid_draw(global.grid);
}

// 3. Draw a border around the entire grid area to check for "No-Man's Land"
draw_set_color(c_yellow);
var _grid_w = (room_width div 6) * 6;
var _grid_h = (room_height div 6) * 6;
draw_rectangle(0, 0, _grid_w, _grid_h, true);

// 4. Reset Alpha so your other UI/Sprites aren't see-through
draw_set_alpha(1.0);

*/