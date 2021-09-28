//Surface scale
fow_scale = 0.25;
//Surface width
surf_w = room_width*fow_scale;
//Surface height
surf_h = room_height*fow_scale;
//FoW surface
fow_surf = surface_create(surf_w, surf_h);
//FoW render list
global.FoW_List = ds_list_create();

//Animation variables
v_speed = 0.1;//Vertical speed and direction
h_speed = -0.1;//Horzontal speed and direction

sh_1 = 0;
sv_1 = 0;

sh_2 = 0;
sv_2 = 0;

ss_1 = 0;
ss_2 = 0;

time = 0;
increment = degtorad(.1);//Affectes the speed of the animation wave
amplitude = 1.499; 
shifty = 0;
shiftx = 0;

//Fog textures
/*
	Small, Medium and Large textures are included
	Use whichever size best repesents the look you are trying to achieve
	If you replace these textures please ensure that they are tilable
*/
f0 = sFog_Lower_S;
f1 = sFog_Middle_S;
f2 = sFog_Upper_S;

//Fog alphas
a0 = 0.1;
a1 = 0.2;
a2 = 0.3;

//Fog coordinates and scale
//Lower fog
fx0 = 0;
fy0 = 0;
fw0 = 0;
fh0 = 0;
//Middle fog
fx1 = 0;
fy1 = 0;
fw1 = 0;
fh1 = 0;
//Upper fog
fx2 = 0;
fy2 = 0;
fw2 = 0;
fh2 = 0;