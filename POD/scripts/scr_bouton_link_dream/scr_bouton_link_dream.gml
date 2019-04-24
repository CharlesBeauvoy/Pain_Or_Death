with obj_bouton_pd_link_dream
{
	if !clicked
	{
		scr_close_bouton();
		color = c_black;
		image_blend = c_white;
	}
	else
	{
		color = c_white;
		image_blend = c_black;
	}
	clicked = !clicked;	
}