component extends="mxunit.framework.TestCase" {
	
	function setUp(){}
	function tearDown(){}
	function testSimpleCreation(){
		var httpItem = new com.adobe.coldfusion.http();
		assert(isObject(httpItem));
		
	}
	
	function testSimpleArgument(){


		var urlname = "http://localhost:8100/"; 

		// Invoke with just the url. This is an HTTP GET. 
		result = new com.adobe.coldfusion.http(url); 
		
		dump(result);
		abort;

		
		
	}
}
