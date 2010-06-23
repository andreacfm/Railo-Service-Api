component extends="mxunit.framework.TestCase" {
	
	function setUp(){}
	function tearDown(){}
	
	
	function testSimpleCreation(){
		var httpItem = new CF.http();
		assert(isObject(httpItem));
		
	}
	
	function testBaseFunctions(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/testpage.html"; 
		var httpItem = new CF.http(url:urlname);
		Assert(httpItem.getUrl() EQ urlname);
		var supportAttributes = httpItem.getSupportedTagAttributes(httpItem.getTagName());
		

		Assert(StructCount(supportAttributes) IS 26);
		
		var attributesToInvoke = httpItem.getTagAttributes();
		Assert(isStruct(attributesToInvoke));
		Assert(StructKeyExists(attributesToInvoke,"url"));
		Assert(StructKeyExists(attributesToInvoke,"method"));
		
	}
	
	function testSimpleSend(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/testpage.html"; 
		var httpItem = new CF.http(url:urlname);
		var results = httpItem.send();
		Assert(isObject(results));
		var httpResult = results.getResult();
		Assert(StructKeyExists(httpResult, "statuscode"));
		
	}
	
	function testNamedQuery(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/query.csv"; 
		var httpItem = new CF.http(url:urlname, name:"colItems");
		var results = httpItem.send();
		var result = results.getPrefix();
		Assert(result.status_code EQ 200);
		Assert(isQuery(results.getResult()));
	}
	
	function testSimplePost(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/posttest.cfm"; 
		var httpItem = new CF.http(url:urlname, method:"POST");
		var results = httpItem.send();
		Assert(httpItem.getMethod() EQ "Post");
		Assert(results.getResult().status_code EQ 200);
		Assert(FindNoCase("requestmethod:POST", results.getResult().filecontent));
	}
	
	function testPostWithParam(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/posttest.cfm"; 
		var httpItem = new CF.http(url:urlname, method:"POST");
			httpItem.addParam(name:"username", value:"elvis", type:"formfield")
					.addParam(name:"password", value:"myPass", type:"formfield");	
	
		var results = httpItem.send();
		
		Assert(httpItem.getMethod() EQ "Post");
		Assert(results.getResult().status_code EQ 200);
		Assert(FindNoCase("form_username=elvis", results.getResult().filecontent));
		Assert(FindNoCase("form_password=myPass", results.getResult().filecontent));
	}
	
	/* Removed as not required
	function testPostWithParamObject(){
		var urlname = "http://dev.local/railo_acf_cfc/test_samples/posttest.cfm"; 
		var httpItem = new CF.http(url:urlname, method:"POST");
			httpItem.addParam(new CF.httpParam(name:"username", value:"elvis", type:"formfield"))
					.addParam(new CF.httpParam(name:"password", value:"myPass", type:"formfield"));	
	
		var results = httpItem.send();
		
		Assert(httpItem.getMethod() EQ "Post");
		Assert(results.getResult().status_code EQ 200);
		Assert(FindNoCase("form_username=elvis", results.getResult().filecontent));
		Assert(FindNoCase("form_password=myPass", results.getResult().filecontent));
	}
	*/
}
