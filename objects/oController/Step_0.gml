if keyboard_check_pressed(vk_tab) 
{ 
	if room_next(room) != -1
    {
		room_goto_next();
    } 
	else
	{
		room_goto(0);
	}
}

if keyboard_check_pressed(ord("D"))
{
	show_debug_overlay(true);
}