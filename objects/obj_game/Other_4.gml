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
