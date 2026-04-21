if (global.grid != -1) {
    draw_set_alpha(0.3); // Make it see-through
    mp_grid_draw(global.grid);
    draw_set_alpha(1.0);
}