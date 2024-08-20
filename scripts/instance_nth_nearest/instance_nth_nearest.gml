// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_nth_nearest(x,y,obj,n)
{
	/// instance_nth_nearest(x,y,obj,n)
//
//  Returns the id of the nth nearest instance of an object
//  to a given point or noone if none is found.
//
//      x,y       point coordinates, real
//      obj       object index (or all), real
//      n         proximity, real
//
/// GMLscripts.com/license

    var list,nearest;
    n = min(max(1,n),instance_number(obj));
    list = ds_priority_create();
    nearest = noone;
    with (obj) ds_priority_add(list,id,distance_to_point(x,y));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}

