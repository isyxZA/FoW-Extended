/// @description Initialise light for the object
/// @param size Light size
/// @param strength Light strength
function AddToFoW(size, strength)
{
	light_size = size;
	light_strength = strength;
	//Add the object to the render list
	ds_list_add(global.FoW_List, id);
}