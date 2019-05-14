///@param argument0

var pnj_destination = argument0.pnj_destination_linked;

var rel_name = ds_list_find_value(argument0.list_data,1);
var rel_age = ds_list_find_value(argument0.list_data,2);
var rel_signe = ds_list_find_value(argument0.list_data,3);
var rel_metier = ds_list_find_value(argument0.list_data,4);
var rel_lieu = ds_list_find_value(argument0.list_data,5);
var rel_type_relation = ds_list_find_value(argument0.list_data,6);

if rel_name != pnj_destination.surname or scr_get_pnj_bio(argument0.pnj_destination_linked.map_information_known,"surname") == -1
	return false;
if rel_age != pnj_destination.age or scr_get_pnj_bio(argument0.pnj_destination_linked.map_information_known,"age") == -1
	return false;
if rel_signe != pnj_destination.signe.name or scr_get_pnj_bio(argument0.pnj_destination_linked.map_information_known,"signe") == -1
	return false;
if rel_metier != pnj_destination.metier or scr_get_pnj_bio(argument0.pnj_destination_linked.map_information_known,"metier") == -1
	return false;
if rel_lieu != pnj_destination.lieu or scr_get_pnj_bio(argument0.pnj_destination_linked.map_information_known,"lieu") == -1
	return false;
/*if rel_type_relation != pnj_destination.surname
	return false;*/
return true;