// Inside obj_audio_manager -> Other -> Room Start

/*
var current_room = room;

switch (current_room) {
    case rm_menu:
    case rm_help:
        // Ensure menu music plays, stop everything else
        if (!audio_is_playing(snd_menu1)) {
            audio_stop_all(); 
            audio_play_sound(snd_menu1, 10, true);
        }
    break;

    case Room2:
        // Moving from Menu to first gameplay area
        if (!audio_is_playing(snd_room1)) {
            audio_stop_sound(snd_menu1); 
            audio_play_sound(snd_room1, 10, true);
        }
    break;
	
    case Room4:
        // Transition to second gameplay area
        if (!audio_is_playing(snd_room2)) {
            audio_stop_sound(snd_room1); // Stop the track from Room2
            audio_play_sound(snd_room2, 10, true);
        }
    break;
	
    case Room5:
        // Transition to third gameplay area
        if (!audio_is_playing(snd_room3)) {
            audio_stop_sound(snd_room2); // Stop the track from Room4
            audio_play_sound(snd_room3, 10, true);
        }
    break;
}

*/