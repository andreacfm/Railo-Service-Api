<cfscript>
component extends="mxunit.framework.TestCase" {
	
	include "configs.cfm";

	function setUp(){		
	}
	
	function tearDown(){
		
	}
	
	
	public void function testSimpleCreation(){
		var feedService = getObject('feed');
		assert(isObject(feedService));
		
	}
	
	public void function test_read(){
		var feedService = getObject('feed');
		feedservice.read(source="http://www.railo.ch/blog/rss.cfm?mode=full", query="feedQuery", properties="feedMetadata");
	}
	
	public void function test_read(){
		var feedService = getObject('feed');
		var result = feedservice.read(source="http://www.railo.ch/blog/rss.cfm?mode=full");
		
		assertTrue(isStruct(result));
		assertTrue(isQuery(result.query));
		assertTrue(isxML(result.xmlvar));
		assertTrue(isStruct(result.properties));
		assertTrue(isStruct(result.name));
				
	}

	public void function test_create(){
		var feedService = getObject('feed');
		
		// Create the feed data structure and add the metadata. 
		myStruct = {}; 
		mystruct.link = "http://www.coldfusionjedi.com"; 
		myStruct.title = "My Blog"; 
		mystruct.description = "It wears sunglasses at night"; 
		mystruct.pubDate = Now(); 
		mystruct.version = "rss_2.0"; 
		myStruct.item =[];
		myStruct.item[1] = {}; 
		myStruct.item[1].description = {}; 
		myStruct.item[1].description.value = 'description'; 
		myStruct.item[1].link = "http://www.cnn.com";		
		myStruct.item[1].pubDate = Now(); 
		myStruct.item[1].title = "Title"; 

		var result = feedservice.create(name="#myStruct#");
		
		assertTrue(isXml(result));
				
	}

}
</cfscript>