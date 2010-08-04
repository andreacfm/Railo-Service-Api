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

MAIL TEST
-------------------------------------------
1) Start fakemail on port 10025 ( http://www.lastcraft.com/fakemail.php )
	
   fakemail.py --host=localhost --port=10025 --path=/Users/andrea/dev/www/ServiceAPI/test_samples/outmail/  
   Adjust the path for your wwwroot	

2) Add in configs.cfm this variable:

	fakemail_outmail = '/Users/andrea/ServiceAPI/test_samples/outemail/';
	
	Value must be the same of the path passed to fakemail   