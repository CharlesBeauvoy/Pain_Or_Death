/// @description Watch soul

watch_soul_count -= 1;
if instance_exists(obj_bouton_pd_watch_soul) and obj_persistent.pnj_selected == self
	obj_bouton_pd_watch_soul.timer.texte = watch_soul_count;
if watch_soul_count > 0
	alarm[3] = room_speed;
else
{
	if instance_exists(obj_bouton_pd_watch_soul)
	{
		with obj_bouton_pd_watch_soul
			event_perform(ev_mouse, ev_left_release);
	}
	else
		watch_soul_count = 30;
}