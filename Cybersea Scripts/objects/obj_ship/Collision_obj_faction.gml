//checa se o objeto é yeaggerista
if(other.faction == faction)exit;
else if(invencible){
	with(other){
		event_perform(ev_other,ev_user1);	
	}
	exit;
}
event_perform(ev_other,ev_user1);
