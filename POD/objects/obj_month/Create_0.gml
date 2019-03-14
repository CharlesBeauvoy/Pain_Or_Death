day = 1;
month = 0;
signe = instance_create_layer(x,y,"Instances_UI_above",obj_signe_capricorne);
signe.image_blend = c_black;

month_list = ds_list_create();
ds_list_add(month_list,"Janvier","Fevrier","Mars","Avril",
"Mai","Juin","Juillet","Aout","Septembre","Octobre","Novemre","Decembre");
sign_list = ds_list_create();
ds_list_add(sign_list,obj_signe_capricorne,obj_signe_verseau,obj_signe_poisson,obj_signe_belier,obj_signe_taureau,
obj_signe_gemeaux,obj_signe_cancer,obj_signe_lion,obj_signe_vierge,obj_signe_balance,obj_signe_scorpion,obj_signe_sagittaire);
day_left = 336;