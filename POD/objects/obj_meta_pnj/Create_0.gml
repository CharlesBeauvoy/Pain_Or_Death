list_relation = ds_list_create();
list_relation_weigth = ds_list_create();
list_relation_text = ds_list_create();

list_relation_sup = ds_list_create();
list_relation_weigth_sup = ds_list_create();
list_relation_sup_text = ds_list_create();
list_relation_sup_obj = ds_list_create();

map_information_known = ds_map_create();
ds_map_add(map_information_known,"name","inconnu");
ds_map_add(map_information_known,"surname","inconnu");
ds_map_add(map_information_known,"signe","inconnu");
ds_map_add(map_information_known,"age","inconnu");
ds_map_add(map_information_known,"metier","inconnu");
ds_map_add(map_information_known,"lieu",lieu);

list_etiquette = ds_list_create();

draw_pop_up_link = false;
draw_relation_link = false;
draw_ghost_arrow = false;

visited = false;
known = false;
marked = false;

sprite_index = spr_pnj_unknown;

bio_height = 0;

watch_soul_count = 1;
watch_soul_count_base = 1;
info_known = 1;
listen_dream_count = 30;

signe = instance_create_layer(x,y,"Instances_selection_pnj",signe);
signe.visible = false;
if obj_month.signe.sprite_index == signe.sprite_index// and visited
{
	signe.visible = true;
	signe.image_blend = c_red;
}

map_relation = ds_map_create();
clef_relation = ds_list_create();
scr_load_pnj_relation(name, object_index);

number_pnj_know = 0;