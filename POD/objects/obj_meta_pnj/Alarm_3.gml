/// @description Listen Dream

watch_soul_count -= 1;
if instance_exists(obj_bouton_pd_listen_dream) and obj_persistent.pnj_selected == self
	obj_bouton_pd_listen_dream.timer.texte = watch_soul_count;
if watch_soul_count > 0
	alarm[3] = room_speed;
else
{
	if instance_exists(obj_bouton_pd_listen_dream)
	{
		with obj_bouton_pd_listen_dream
			event_perform(ev_mouse, ev_left_release);
	}
	else
		watch_soul_count = watch_soul_count_base;
	scr_watch_soul(self);
	scr_infos_contexte("L'âme de "+self.name+" est connue");
	instance_destroy(obj_bouton_pd_listen_dream.timer);
	script_execute(obj_bouton_pd_listen_dream.script_left_released);
}