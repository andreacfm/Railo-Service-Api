<!--- PARAMS --->
<cfset dsn = 'railoserviceapi'>




<!--- ADD SOME DATA --->
<cfoutput><h3>Adding data ....</h3></cfoutput>
<cfflush>

<cfquery name="q" datasource="#dsn#">
DROP TABLE IF EXISTS TEAM;
	
CREATE TABLE TEAM(
	ID INT AUTO_INCREMENT PRIMARY KEY, 
	FIRSTNAME VARCHAR(255),
	LASTNAME VARCHAR(255)
);	

INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Gert','Frantz');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Micheal','Offner');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Sean','Corfield');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Peter','Bell');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Mark','Drew');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Todd','Rafferty');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Jordan','Micheals');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('AJ','Mercier');
INSERT INTO "TEAM"(FIRSTNAME,LASTNAME) VALUES ('Andrea','Campolonghi');
</cfquery>

<cfoutput><p>* Done!</p></cfoutput>
<cfflush>

