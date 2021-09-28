if fow_update == true {
    fow_update = false
	//Speed at which the fog is updated...Lower values are smoother
    alarm[0] = 4;
    surface_set_target(fow_surf);
	//Draw the black background only once
    if fow_create
	{
		fow_create = false;
        draw_clear(c_black);
    }
    //Check if there are objects in the render list
	if !ds_list_empty(global.FoW_List)
	{
		gpu_set_blendmode(bm_subtract);
		var l = ds_list_size(global.FoW_List);
		for (var i = 0; i < l; ++i)
		{
			//Retrieve the object id
			var c = ds_list_find_value(global.FoW_List, i);
			with c
			{
				//Render the light
				draw_sprite_ext(sLight, 0, x*other.fow_scale, y*other.fow_scale, 
								light_size*other.fow_scale, light_size*other.fow_scale, 
								0, c_white, light_strength);
			}
		}
		gpu_set_blendmode(bm_normal);
	}
    surface_reset_target();
}

draw_surface_ext(fow_surf, 0, 0, 1/fow_scale, 1/fow_scale, 0, c_white, 1);