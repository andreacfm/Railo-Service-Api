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
	
	public void function simple_execute_return_recordset(){
		var q = new CF.Query(datasource = variables.dsn, sql = 'select * from "TEAM"');
		var result = q.execute();	
		assertTrue(isvalid("Query",result.getResult()));	
	
	}

}
