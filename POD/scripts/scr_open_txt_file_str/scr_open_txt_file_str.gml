///@param filename

///@description Retourne le contenu d'un fichier sous la forme d'une seule chaine de characteres

var theData = "";
var theStateFile = file_text_open_read(argument0);
while (!file_text_eof(theStateFile))
{
    theData += file_text_read_string(theStateFile);
	file_text_readln(theStateFile);
}

file_text_close(theStateFile);
return (theData);
