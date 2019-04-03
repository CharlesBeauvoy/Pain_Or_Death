day = 1;
month = 0;
signe = obj_signe_bottom;
signe.image_blend = c_black;

sign_sprite_list = ds_list_create();
ds_list_add(sign_sprite_list,spr_signe_belier,obj_signe_taureau,spr_signe_gemaux,spr_signe_cancer
,spr_signe_lion,spr_signe_vierge,spr_signe_balance,spr_signe_scorpions,spr_signe_serpentaire,
spr_signe_sagittaire,spr_signe_capricorne,spr_signe_verseau,spr_signe_poisson);

sign_name_list = ds_list_create();
ds_list_add(sign_name_list,"Bélier","Taureau","Gémaux","Cancer","Lion","Vierge","Balance","Scorpion",
"Serpentaire","Sagittaire","Capricorne","Verseau","Poisson");

day_left = 364;