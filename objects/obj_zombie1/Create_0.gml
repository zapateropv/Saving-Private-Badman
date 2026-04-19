path = path_add(); // This creates a blank path for this specific zombie
move_speed = 0.1;  // Adjust this based on how fast your zombies are
alarm[0] = 1;      // Start the pathfinding logic immediately
// Snap to the nearest 8px grid so it doesn't start 'inside' a wall
move_snap(8, 8);