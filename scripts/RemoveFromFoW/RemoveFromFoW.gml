/// @description Remove the object from the fog of war light render list
function RemoveFromFoW()
{
	var ci = ds_list_find_index(global.FoW_List, id);
	ds_list_delete(global.FoW_List, ci);
}