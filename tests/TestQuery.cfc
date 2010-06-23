component extends="mxunit.framework.TestCase" {
	
	function setUp(){}
	function tearDown(){}
	
	
	function testSimpleCreation(){
		var queryItem = new CF.query();
		assert(isObject(queryItem));
	}
	
	
	
	
	
}