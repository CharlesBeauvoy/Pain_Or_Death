pnj_linked = noone;

nom_relation = noone;
force_relation = 0;
bio_relation = "";

pnj_relation_known = false;
nom_relation_known = false;
force_relation_known = false;
bio_relation_known = false;

fully_known = false; //pour quand on connaitra tout pour eviter des tests
unknown = false; //totalement inconnu all var a fausse

list_data = ds_list_create(); // quand on ne connait pas encore tout
ds_list_add(list_data,"femme","balance","teste","bonour");
sentence = "?"; // quand on connait tout