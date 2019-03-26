/// @description Watch Soul

listen_dream_count -= 1;
obj_bouton_pd_listen_dream.timer.texte = listen_dream_count;
if listen_dream_count > 0
	alarm[4] = room_speed;
else
{
	instance_destroy(obj_bouton_pd_listen_dream.timer);
	obj_bouton_pd_listen_dream.timer = noone;
}