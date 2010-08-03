Railo Services

*SET UP ( needed for runnign the tests )

QUERY TESTS
------------------------------------------
1) Clone under wwwroot as /RailoAPI/...
2) Craete a mapping to org/railo/cfml/ called "CF"
3) Create a dsn called 'railoserviceapi' for a H2 database named 'test' ( a working copy is under /test_samples/db )
4) /setup/index.cfm run some queries that populate the db.

FTP TESTS
------------------------------------------
1) Create a file called configs.cfm into the /tests dir.
2) Add these lines with your personal settings:

<cfscript>
ftp_server = "localhost";	
ftp_username = 'username';
ftp_pswd = 'password';
ftp_home = '/Users/andrea/dev/www/ServiceAPI/test_samples/ftp/';
</cfscript>