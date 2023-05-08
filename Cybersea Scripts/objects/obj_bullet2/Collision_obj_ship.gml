if (other == creator) exit;

instance_destroy();

//checa se é facção yeagger
if(other.faction == faction) exit;

//aplica o dano ao objeto
with(other) event_perform(ev_other,ev_user1);