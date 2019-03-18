day = 1;
month = 0;
signe = obj_signe_bottom;
signe.image_blend = c_black;

month_list = ds_list_create();
ds_list_add(month_list,"Janvier","Fevrier","Mars","Avril",
"Mai","Juin","Juillet","Aout","Septembre","Octobre","Novemre","Decembre");

sign_sprite_list = ds_list_create();
ds_list_add(sign_sprite_list,spr_signe_capricorne,spr_signe_verseau,spr_signe_poisson,spr_signe_belier,obj_signe_taureau,
spr_signe_gemaux,spr_signe_cancer,spr_signe_lion,spr_signe_vierge,spr_signe_balance,spr_signe_scorpions,spr_signe_sagittaire);

sign_name_list = ds_list_create();
ds_list_add(sign_name_list,"Capricorne", "Verseau", "Poisson", "Belier", "Taureau", "Gemeaux", "Cancer", "Lion", "Vierge", "Balance", "Scorpion","Sagittaire");

day_left = 336;