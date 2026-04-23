// Check if player presses F
if (keyboard_check_pressed(ord("F"))) 
{
    // Check if player has the key
    if (other.has_key) 
    {
        // Open door (destroy it or change sprite)
        instance_destroy();
        
        // Optional: play sound
        // audio_play_sound(snd_door_open, 1, false);
    } 
    else 
    {
        // Optional: show message
        show_debug_message("You need a key!");
    }
}