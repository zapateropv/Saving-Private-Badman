if (instance_exists(objCharacter)) {
    // 6 half-hearts total. Frame 0 is Full, Frame 6 is Empty.
    var _frame = 6 - objCharacter.hp;
    _frame = clamp(_frame, 0, 6);

    // Draw at 3x size in the top left corner
    draw_sprite_ext(spr_character_health, _frame, 30, 30, 3, 3, 0, c_white, 1);
}