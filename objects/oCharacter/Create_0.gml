//Add this script to any object that will add light to the fog of war
//Set the light size and strength here
AddToFoW(random_range(0.5, 1.5), 1);

//Character movement
//Waypoint coordinates
x_target = random(room_width);
y_target = random(room_height);
//Waypoint timer
alarm[0] = random_range(200, 600);
//Destroy timer
alarm[1] = random_range(1200, 1600);