<cfquery name="q" datasource="railoserviceapi">
CREATE TABLE IF NOT EXISTS TEAM(
	ID INT PRIMARY KEY, 
	FIRSTNAME VARCHAR(255),
	LASTNAME VARCHAR(255)
)	
</cfquery>