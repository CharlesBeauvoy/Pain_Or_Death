list_relation = ds_list_create();
list_relation_weigth = ds_list_create();
list_relation_text = ds_list_create();

list_relation_sup = ds_stack_create();
list_relation_weigth_sup = ds_stack_create();
list_relation_sup_text = ds_stack_create();

list_relation_secret = ds_stack_create();
list_relation_weigth_secret = ds_stack_create();
list_relation_secret_text = ds_stack_create();

list_etiquette = ds_list_create();

draw_pop_up_link = false;
draw_relation_link = false;

visited = false;
known = false;
marked = false;

sprite_index = spr_pnj_unknown;

bio_height = 0;

watch_soul_count = 30;
listen_dream_count = 30;

signe = instance_create_layer(x,y,"Instances_selection_pnj",signe);
//signe.visible = false;
