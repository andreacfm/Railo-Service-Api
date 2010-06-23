component extends="mxunit.framework.TestCase" {
	
	function setUp(){}
	function tearDown(){}
	
	
	function testSimpleCreation(){
		var mailService = new CF.mail();
		assert(isObject(mailService));
	}
	
	
	
	
	
}