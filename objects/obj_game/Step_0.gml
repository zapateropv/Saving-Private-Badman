// Only draw if the grid actually exists to prevent crashes
if (variable_global_exists("grid")) {
    if (global.grid != -1) {
        draw_set_alpha(0.3); // Transparency
        draw_set_color(c_red);
        mp_grid_draw(global.grid);
        draw_set_alpha(1.0); // Reset transparency
    }
}