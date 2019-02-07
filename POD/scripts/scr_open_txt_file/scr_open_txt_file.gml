///@param filename

///@description Retourne le contenu d'un fichier sous la forme d'une liste, une case par ligne

var theData = ds_list_create();
var theStateFile = file_text_open_read(argument0);
if theStateFile == -1
	return -1;
while (!file_text_eof(theStateFile))
{
    var tmp = file_text_read_string(theStateFile);
	file_text_readln(theStateFile);
    ds_list_add(theData, tmp);
}

file_text_close(theStateFile);
return (theData);
