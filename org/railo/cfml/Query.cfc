component output="false" extends="Base"{
	
	property name="name" type="String";
	
	/*
	 * Tag Name
	 */
	variables.tagname = "query";
	
	
	/*
	 * @hint Constructor
	 */	
	public Base function init(){
		super.init(argumentCollection=arguments);
		return this;		
	}

	/*
	 * @hint Execute the query
	 */	
	public Result function execute(String sql=""){
		if(len(arguments.sql)){
			 setSql(arguments.sql);
		}
		//parseSql();
		return invokeTag();
	}

	/*
	 * @hint Parse the sql string converting into an array. 
	 *       Named and positional params will populate the array too.
	 */
	private Array function parseSql(){
		var result = array();
		var sql = this.getSql();

		var match = refindNoCase(':.*|\?',sql,1,true);
		
		writedump(match);
				
		return result;	
	}
						
}

/*
invoke tag flow:

* params exixts?
* NO = invoketag   YES 
				   match sql for :key
				   replace with params array
				   setSql()
				   invokeTag
 */