// create populated list
nicknames = new Array("bob","ed","steve","ralph","joe","deb","kate");
// iterate array elements by index
WScript.echo("The names are: ");
for(count = 0; count < nicknames.length; count++)
    WScript.echo(" nicknames[" + count + "]=" + nicknames[count]);
