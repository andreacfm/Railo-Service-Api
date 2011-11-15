component extends="mxunit.framework.TestCase"{

	include "configs.cfm";
	include "fixture.cfm";
	variables.dsn = "railoserviceapi";


	public void function setUp(){
	    setUpData();
	}

	public void function tearDown(){
	    tearDownData();
	}

	public void function simple_creation_must_return_a_cfc_query_object(){
		var q = getObject('query');
		assertTrue(isObject(q),"new query does not return an object");

	}

	public void function simple_execute_return_query_recordset(){
		var sql = 'select * from team';
		var q = getObject('query',{datasource = variables.dsn, sql = sql});
		var result = q.execute();
		assertTrue(isvalid("Query",result.getResult()),"result is not a valid query");
		assertTrue(trim(result.getPrefix().sql) == sql,"Error in prefix");

	}


	public void function test_getNamedParams(){
		var q = getObject('query');
		makePublic(q,'getNamedParams');
		q.addParam(name="p1",value="1",cfsqltype="cf_sql_varchar");
		q.addParam(name="p2",value="2",cfsqltype="cf_sql_varchar");
		q.addParam(value="3",cfsqltype="cf_sql_varchar");
		var result = q.getNamedParams();
		assertTrue(result.size() == 2);
		assertTrue(result[1].name == 'p1');

	}

	public void function test_getPositionalParams(){
		var q = getObject('query');
		makePublic(q,'getPositionalParams');
		q.addParam(name="p1",value="1",cfsqltype="cf_sql_varchar");
		q.addParam(name="p2",value="2",cfsqltype="cf_sql_varchar");
		q.addParam(value="3",cfsqltype="cf_sql_varchar");
		var result = q.getPositionalParams();
		assertTrue(result.size() == 1);
		assertTrue(result[1].value == 3);

	}

	public void function test_parse_sql(){
		var q = getObject('query');
		makePublic(q,'parseSql');

		q.addParam(name="wrong",value="1",cfsqltype="cf_sql_numeric");
		q.addParam(name="myid",value="1",cfsqltype="cf_sql_numeric");
		q.addParam(value="hello",cfsqltype="cf_sql_varchar");

		var sql = "Select from table where id = :myid and name = ?";
		q.setSql(sql);
		var result = q.parseSql();
		assertTrue(arrayLen(result) eq 4);
		assertTrue(trim(result[1].value) eq  'Select from table where id =');
		assertTrue(trim(result[2].name) eq 'myid');
		assertTrue(trim(result[4].value) eq 'hello');

	}

	public void function test_findNamedParam(){
		var q = getObject('query');
		makePublic(q,'findNamedParam');

		var params = [
			{value="value",cfsqltype="cf_sql_varchar"},
			{name="param1",value="10",cfsqltype="cf_sql_numeric"},
			{name="param2",value="20",cfsqltype="cf_sql_numeric"}
		]

		var res = q.findNamedParam(params,'param1');
		assertTrue(res.value eq 10);

		var res = q.findNamedParam(params,'param2');
		assertTrue(res.value eq 20);

	}

	public void function test_findNamedParam_not_found_exception()
		mxunit:expectedException="org.railo.cfml.query.namedParameterNotFoundException"
		{
		var q = getObject('query');
		makePublic(q,'findNamedParam');

		var params = [
			{value="value",cfsqltype="cf_sql_varchar"},
			{name="param1",value="10",cfsqltype="cf_sql_numeric"},
			{name="param2",value="20",cfsqltype="cf_sql_numeric"}
		]

		var res = q.findNamedParam(params,'not_exists');

	}

	public void function test_execute(){

		var q = getObject('query',{datasource=variables.dsn});
		q.addParam(name="domain",value="com",cfsqltype="cf_sql_varchar");
		q.addParam(value="gert",cfsqltype="cf_sql_varchar");
		var sql = "Select * from team where dom = :domain and firstname = ?";
		q.setSql(sql);

		var qres = q.execute();

		var result = qres.getResult();
		var prefix = qres.getPrefix();

		assertTrue(result.recordcount eq 1);
		assertTrue(result.lastname eq 'frantz');

	}

	public void function test_clear_params(){

		var q = getObject('query',{datasource=variables.dsn});
		q.addParam(name="domain",value="com",cfsqltype="cf_sql_varchar");
		q.addParam(value="gert",cfsqltype="cf_sql_varchar");
		var sql = "Select * from team where dom = :domain and firstname = ?";
		q.setSql(sql);

		var qres = q.execute();
		var result = qres.getResult();

		assertTrue(result.recordcount eq 1);
		assertTrue(result.lastname eq 'frantz');

		q.clearParams();

		assertTrue(arrayIsEmpty(q.getParams()));

		// change just the params while sql is still the same
		q.addParam(name="domain",value="org",cfsqltype="cf_sql_varchar");
		q.addParam(value="todd",cfsqltype="cf_sql_varchar");

		qres = q.execute();
		result = qres.getResult();

		assertTrue(result.recordcount eq 1);
		assertTrue(result.lastname eq 'rafferty');

	}

	public void function testQoQ(){

		var q = getObject('query',{datasource=variables.dsn});
		var sql = "Select * from team";
		q.setSql(sql);
		var result = q.execute().getResult();

		q = getObject('query',{datasource=variables.dsn, dbtype="query"});
		sql = "Select * from resultSet where firstname = 'gert'";
		q.setSql(sql);
		q.setAttributes(resultSet=result);
		result = q.execute().getResult();

		assertTrue(result.recordcount eq 1);

	}

	public void function test_insert_with_named_parameters(){

        transaction action="begin"{

            try{
                var q = getObject('query',{datasource=variables.dsn});
                var sql = "INSERT INTO team (firstname, lastname) VALUES( :firstname , :lastname )";
                q.setSql(sql);
                q.addParam(name="firstname", value="name_1", cfsqltype="cf_sql_varchar");
                q.addParam(name="lastname", value="lastname_1", cfsqltype="cf_sql_varchar");

                result = q.execute().getResult();
                debug(result);

            }catch(Any e){
                transaction action="rollback";
                rethrow;
            }

            transaction action="rollback";

        }


	}

	public void function test_insert_with_with_multiline_query(){

        transaction action="begin"{

            try{
                var q = getObject('query',{datasource=variables.dsn});

                q.setSql('
                    INSERT INTO team(
                        firstname,
                        lastname
                    ) VALUES(
                        :firstname,
                        :lastname
                    )');

                q.addParam(name = 'firstname', value = 'myname', cfsqltype = 'cf_sql_varchar');
                q.addParam(name = 'lastname', value = 'mylastname', cfsqltype = 'cf_sql_varchar');

                q.execute();

                var q2 = getObject('query',{datasource=variables.dsn});
                q2.setSql("select * from team where firstname = 'myname'");
                var res = q2.execute().getResult();

                assertEquals(1,res.recordcount);
                assertTrue(res.firstname eq 'myname');

            }catch(Any e){
                transaction action="rollback";
                rethrow;
            }

            transaction action="rollback";

        }

	}

    // RAILO 1280
	public void function test_named_parameter_contain_a_number(){

		var q = getObject('query',{datasource=variables.dsn});
		q.addParam(name="test1",value="1",cfsqltype="cf_sql_numeric");
		var sql = "Select * from team where test1 = :test1";
		q.setSql(sql);

		var qres = q.execute();

		var result = qres.getResult();

		assertEquals(0, result.recordcount);

	}

    // RAILO 1379
	public void function test_sql_contains_a_colon(){

		var q = getObject('query',{datasource=variables.dsn});
        q.setSql("INSERT INTO team(firstname)VALUES('test:test')");
        q.execute();

		var sql = "Select * from team where firstname = 'test:test'";
		q.setSql(sql);

		var qres = q.execute();
		var result = qres.getResult();
		assertEquals(1, result.recordcount);

	}

	public void function test_sql_contains_a_question_mark(){

		var q = getObject('query',{datasource=variables.dsn});
        q.setSql("INSERT INTO team(firstname)VALUES('test?test')");
        q.execute();

		var sql = "Select * from team where firstname = 'test?test'";
		q.setSql(sql);

		var qres = q.execute();
		var result = qres.getResult();
		assertEquals(1, result.recordcount);

	}

    // RAILO 1440
	public void function test_argument_dbtype_passed_to_execute(){

		var q = getObject('query',{datasource=variables.dsn});
		var sql = "Select * from team";
		q.setSql(sql);
		var result = q.execute().getResult();

		q = getObject('query',{datasource=variables.dsn});
		q.setAttributes(resultSet=result);
		result = q.execute(sql="Select * from resultSet where firstname = 'gert'",dbtype="query").getResult();

		assertTrue(result.recordcount eq 1);

	}

    // RAILO 1428
    public void function test_drops_character_after_last_parameter_question_mark(){
        var q = getObject('query',{datasource=variables.dsn});
        makePublic(q,"parseSql");
        q.addParam(value="name_1", cfsqltype="cf_sql_varchar");
        q.addParam(value="lastname_1", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname)VALUES( ?, ?)");

        q.execute();
        q.clearParams();

        var sql = "Select * from team where firstname = 'name_1'";
        q.setSql(sql);

        var qres = q.execute();
        var result = qres.getResult();
        assertEquals(1, result.recordcount);

    }

    //RAILO-1557
    public void function test_param_name_with_underscore(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my fullname", name="full_name", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(full_name)VALUES(:full_name )");
        q.execute();

        q.clearParams();

        var sql = "Select * from team where full_name = 'my fullname'";
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);

    }



    public void function test_sql_contains_colon_and_dquote(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( 'this""or:that' , :param , ? )");
        q.execute();

        q.clearParams();

        var sql = "Select * from team where firstname = 'this""or:that'";
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);

    }


    public void function test_sql_contains_colon_and_escaped_dquote(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( ""this\""or:that"" , :param , ? )");
        q.execute();

        q.clearParams();

        var sql = "Select * from team where firstname = 'this""or:that'";
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);

    }


    public void function test_sql_contains_qmark_and_squote(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( ""this'or?that"" , :param , ? )");
        q.execute();

        q.clearParams();

        var sql = "Select * from team where firstname = 'this\'or?that'";
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);

    }


    public void function test_sql_contains_qmark_and_escaped_dquote(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( 'this\'or?that' , :param , ? )");
        q.execute();

        q.clearParams();

        var sql = 'Select * from team where firstname = "this''or?that"';
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);

    }



    public void function test_sql_contains_commented_namedparam(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( 'this-1' , :param /* :this */ , ? )");
        q.execute();

        q.clearParams();

        var sql = 'Select * from team where firstname = "this-1"';
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);
    }


    public void function test_sql_contains_commented_qmark(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( 'this-2' , :param /* this ? */ , ? )    ");
        q.execute();

        q.clearParams();

        var sql = 'Select * from team where firstname = "this-2"';
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);
    }


    public void function test_sql_contains_commented_quote(){
        var q = getObject('query',{datasource=variables.dsn});
        q.addParam(value="my lastname", name="param", cfsqltype="cf_sql_varchar");
        q.addParam(value="my fullname", cfsqltype="cf_sql_varchar");
        q.setSql("INSERT INTO team(firstname,lastname,full_name)VALUES( 'this-3' ,/*'*/ :param /*'*/ , ? )    ");
        q.execute();

        q.clearParams();

        var sql = 'Select * from team where firstname = "this-3"';
        q.setSql(sql);
        var result = q.execute().getResult();
        assertEquals(1, result.recordcount);
    }




}
