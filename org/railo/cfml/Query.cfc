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
		var result = [];
		var sql = this.getSql();
		var namedParams = getNamedParams();
		var positionalParams = getPositionalParams(); 
		var positionalCursor = 1;
		var str = "";
		var cursor = 1;
		
		while(cursor neq 0){
			match = refindNoCase(':[a-z]*|\?',sql,cursor,true);
			
			if(match.pos[1] gt 0){
				// string from cursor to match			
				str = mid(sql,cursor,match.pos[1] - cursor);
				result.add({type='String',value=str})
				
				//add match
				str = mid(sql,match.pos[1],match.len[1]);
				if(left(str,1) eq ':'){
					result.add(findNamedParams(namedParams,right(str,len(str) - 1)));
					namedCursor ++;
				}else{
					result.add(positionalParams[positionalCursor]);
					positionalCursor ++;				
				}
			}						
			// point the cursor after the match
			cursor = match.pos[1] + match.len[1];	
		}		

		return result;	
	}
	

	/*
	 * @hint Return just the named params
	 */	
	private Array function getNamedParams(){
		var params = getParams();
		var result = [];
		
		for(item in params){
			if(structKeyExists(item,'name')){
				result.add(item);
			}
		}
		
		return result;
	}


	/*
	 * @hint Return just the positional params
	 */	
	private Array function getPositionalParams(){
		var params = getParams();
		var result = [];

		for(item in params){
			if(not structKeyExists(item,'name')){
				result.add(item);
			}
		}
		
		return result;
	}
	
	
	private Struct function findNamedParams(String name, Array params){
		
	
	}
						
}
