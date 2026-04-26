// Draw GUI Event
if (is_talking) {
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    // Box settings
    var _bw = 600; 
    var _bh = 120;
    var _bx = (_gui_w / 2) - (_bw / 2); // Center horizontally
    var _by = _gui_h - 150;             // Bottom of screen
    
    // Draw Background
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(_bx, _by, _bx + _bw, _by + _bh, false);
    
    // Draw Text
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text_ext(_bx + 20, _by + 20, text_lines[text_page], 22, _bw - 40);
}