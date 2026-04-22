if (is_attacking) {
    // Damage happens only NOW, at the end of the swing
    if (instance_exists(objCharacter) && place_meeting(x, y, objCharacter)) {
        objCharacter.hp -= 1.5; // Deals half-heart damage
    }
    
    is_attacking = false; // Reset so he can walk or attack again
    alarm[0] = 1;         // Immediately look for a new path to follow the player
}