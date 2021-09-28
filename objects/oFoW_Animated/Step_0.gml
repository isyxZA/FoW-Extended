/// @decription Animate the fog layers

//Adjust the x, y and scale variables
time += increment;
shifty = amplitude * sin(time);
shiftx = amplitude * cos(time * 0.99);

sh_1 += (h_speed/1.5) - 0.02;
sv_1 += (v_speed/6) - 0.02;

sh_2 += (h_speed/3) + 0.001;
sv_2 += (v_speed/12) + 0.001;

ss_1 = (shiftx * 0.050) + 1.6;
ss_2 = (shifty * 0.020) + 1.8;

//Apply the animation results
//Lower fog
fx0 = (x+sh_1)*fow_scale;
fy0 = (y+sv_1)*fow_scale;
fw0 = (1+ss_1)*fow_scale;
fh0 = (1+ss_1)*fow_scale;
//Middle fog
fx1 = (x+sh_2)*fow_scale;
fy1 = (y+sv_2)*fow_scale;
fw1 = (1+ss_2)*fow_scale;
fh1 = (1+ss_2)*fow_scale;
//Upper fog
fx2 = fx2;
fy2 = fy1;
fw2 = fw1;
fh2 = fh2;