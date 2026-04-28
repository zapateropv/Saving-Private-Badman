// check if ANY zombie is alive
var zombies_alive =
    instance_exists(obj_zombie1) ||
    instance_exists(obj_zombie2) ||
    instance_exists(obj_zombie3);

// PLAY horde music if zombies exist
if (zombies_alive) {

    if (!audio_is_playing(global.horde_sound)) {
        global.horde_sound = audio_play_sound(snd_zombie_horde, 1, true); // loop = true
    }

} 
// STOP when all zombies are dead
else {

    if (audio_is_playing(global.horde_sound)) {
        audio_stop_sound(global.horde_sound);
        global.horde_sound = -1;
    }
}