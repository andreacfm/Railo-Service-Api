<!--- PARAMS --->
<cfset dsn = 'railoserviceapi'>




<!--- ADD SOME DATA --->
<cfoutput><h3>Adding data ....</h3></cfoutput>
<cfflush>

<cfquery name="q" datasource="#dsn#">
drop table if exists team;
	
create table team(
	id int auto_increment primary key, 
	firstname varchar(255),
	lastname varchar(255),
	dom varchar(10)
);	

insert into team(firstname,lastname,dom) values ('gert','frantz','com');
insert into team(firstname,lastname,dom) values ('micheal','offner','com');
insert into team(firstname,lastname,dom) values ('sean','corfield','com');
insert into team(firstname,lastname,dom) values ('peter','bell','com');
insert into team(firstname,lastname,dom) values ('mark','drew','com');
insert into team(firstname,lastname,dom) values ('todd','rafferty','org');
insert into team(firstname,lastname,dom) values ('jordan','micheals','org');
insert into team(firstname,lastname,dom) values ('aj','mercier','org');
insert into team(firstname,lastname,dom) values ('andrea','campolonghi','org');
</cfquery>

<cfoutput><p>* Done!</p></cfoutput>
<cfflush>

