/// @description Initialize
var halfwidth = camera_get_view_x(view_camera[0])+obj_persistent.gui_width/2;
var halfheight = camera_get_view_y(view_camera[0])+obj_persistent.gui_height/2;
scr_inputbox_init(halfwidth-50,halfheight-20,halfwidth+50,halfheight+20,4,4,292,fnt_text,false,fnt_text,"*","",false,20);