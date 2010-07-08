component extends="mxunit.framework.TestCase"{
	
	variables.dsn = "railoserviceapi";
	
	public void function setUp(){
	}

	public void function tearDown(){
	}

	public void function simple_creation_must_return_a_cfc_query_object(){
		var q = new CF.query();
		assertTrue(isObject(q),"new query does not return an object");	
	
	}
	
	public void function simple_execute_return_query_recordset(){
		var sql = 'select * from "TEAM"';
		var q = new CF.Query(datasource = variables.dsn, sql = sql);
		var result = q.execute();	
		assertTrue(isvalid("Query",result.getResult()));
		assertTrue(result.getPrefix().sql eq sql,"Error in prefix");	
	
	}
	
	public void function test_params(){

	}

}
