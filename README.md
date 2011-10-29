Running Test
===
Create a file called config.cfm in the /tests folder.
Copy the following text and adjust for your needs.

    <cfscript>
    ftp_server = "localhost";
    ftp_username = 'andrea';
    ftp_pswd = 'compaq';
    ftp_home = '/Users/andrea/dev/workspace/ServiceAPI/webroot/test_samples/ftp/';
    fakemail_outmail = '/Users/andrea/dev/workspace/ServiceAPI/webroot/test_samples/outemail/';

    mapping = "src.org.railo.cfml.";

    // comment this line will run code from the railo server itself
    //mapping = "";

    private function getObject(String name,Struct attr="#structNew()#"){
    var object = evaluate("new #mapping##name#(argumentCollection=attr)");
    return object;
    }
    </cfscript>

### Datasource for Query.cfc test
Create a datasource called "railoserviceapi". The file fixture.cfm will created and drop a test db before any test is runned.
