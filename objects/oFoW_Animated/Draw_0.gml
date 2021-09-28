if surface_exists (fow_surf) 
{
    surface_set_target(fow_surf);
    draw_clear(c_black);
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
	}
	gpu_set_blendmode(bm_add);
	//Lower fog
	draw_sprite_tiled_ext(f0, 0, fx0, fy0, fw0, fh0, c_white, a0);
	//Middle fog
	draw_sprite_tiled_ext(f1, 0, fx1, fy1, fw1, fh1, c_white, a1);
	//Upper fog
	draw_sprite_tiled_ext(f2, 0, fx2, fy2, fw2, fh2, c_white, a2);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface_ext(fow_surf, 0, 0, 1/fow_scale, 1/fow_scale, 0, c_white, 1);
}
else 
{
    fow_surf = surface_create(surf_w, surf_h);
    surface_set_target(fow_surf);
    draw_clear(c_black);
    surface_reset_target();
}