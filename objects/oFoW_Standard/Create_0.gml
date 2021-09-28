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