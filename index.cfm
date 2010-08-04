<strong>Railo Services</strong>

<cfmail from="andrea@andrea.com" to="andrea@andrea.com" server="localhost" subject="test"></cfmail>

<cfset bFileIsThere = FileExists("ftp://andrea:compaq@localhost/practice")>
<cfdump var="#bFileIsThere#">
<cfdirectory action="list" directory="sftp://andreac:kand795@10.10.10.100/" name="q">
<cfdump var="#q#">
