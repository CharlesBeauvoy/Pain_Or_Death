pnj_linked = noone;
pnj_destination_linked = noone;
pnj_destination_linked_name = "";

type_relation = noone;
force_relation = 0;
bio_relation = "";

//pnj_relation_known = false;
type_relation_known = false;
force_relation_known = false;
bio_relation_known = false;

name_relation_known = false;
surname_relation_known = false;
age_relation_known = false;
signe_relation_known = false;
lieu_relation_known = false;
metier_relation_known = false;

pnj_destination_fully_known = false;
fully_known = false; //pour quand on connaitra tout pour eviter des tests
unknown = true; //totalement inconnu all var a fausse

list_data = ds_list_create(); // quand on ne connait pas encore tout
sentence = "?"; // quand on connait tout