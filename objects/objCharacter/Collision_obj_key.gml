// Check if the specific zombie is gone
if (!instance_exists(obj_zombie3)) 
{
    // Logic for picking up the key
    has_key = true; 
    
    // Destroy the key instance so it disappears from the map
    with (other) 
    {
        instance_destroy();
    }
    
    // Optional: Play a sound or show a message
    
}