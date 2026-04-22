// Inside the Trapdoor object or Collision Event
if (room == Room1) {
    global.target_room = Room2;
    global.target_x = 100;
    global.target_y = 200;
} 
else if (room == Room2) {
    global.target_room = Room4;
    global.target_x = 100; // New coordinates for Room 4
    global.target_y = 121;
}

room_goto(global.target_room);