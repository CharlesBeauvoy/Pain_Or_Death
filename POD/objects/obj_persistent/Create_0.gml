randomize();

var str = scr_open_txt_file_str("pnj_bio_relations.json");
theMap = json_decode(str);

last_infos_contexte = noone;

not_clickable = false;

pnj_marked = noone;

moving_view = false;
	
pnj_selected = noone;
pnj_hovered = noone;
pnj_ghosted = noone;

pnj_to_killed = ds_list_create();
pnj_list_relation = ds_list_create();

listing_name_pnj = scr_open_txt_file("listing_name_pnj.txt");

camera_view_port_width = 1920;
camera_view_port_height = 1080;

gui_width = 1920;
gui_height = 1080;

camera_view_port_x = 0;
camera_view_port_y = 0;

button_selected = noone;

list_key_pnj = ds_list_create();
ds_list_add(list_key_pnj,"name","surname","age","metier","signe","lieu");
list_name_key_pnj = ds_list_create();
ds_list_add(list_name_key_pnj,"Prénom","Nom","Âge","Métier","Zodiac","Lieu");