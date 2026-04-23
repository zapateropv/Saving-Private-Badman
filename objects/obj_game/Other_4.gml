// Run this every time a room starts
if (instance_exists(objCharacter)) {
    view_enabled = true;
    view_visible[0] = true;
    
    // Set how much of the room the camera sees (Zoom level)
    // 320x180 is a good "Pixel Art" resolution
    camera_set_view_size(view_camera[0], 250, 150);
    
    // Tell the camera to follow the character
    // The "160, 90" keeps them exactly in the middle of a 320x180 view
    camera_set_view_target(view_camera[0], objCharacter);
    camera_set_view_border(view_camera[0], 1280, 720);
}

//Initialize
current_music = -1;
var new_music;

// Assign music depending on room
switch (room)
{
    case Room2:
        new_music = snd_room1;
        break;

    case Room4:
        new_music = snd_room2;
        break;

    case Room5:
        new_music = snd_room3;
        break;

    default:
        new_music = -1;
        break;
}

// If music is different, change it
if (current_music != new_music)
{
    audio_stop_all();

    if (new_music != -1)
    {
        audio_play_sound(new_music, 1, true);
    }

    current_music = new_music;
}