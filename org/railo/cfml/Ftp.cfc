component extends="Base" accessors="true"{
		
	variables.tagname = "ftp";
					
	public Result function open(){
		this.setAction('open');
		return super.invokeTag();
	}

	public Result function close(){
		this.setAction('close');
		return super.invokeTag();
	}

	public Result function quote(){
		this.setAction('quote');
		return super.invokeTag();
	}

	public Result function site(){
		this.setAction('site');
		return super.invokeTag();
	}

	public Result function allo(){
		this.setAction('allo');
		return super.invokeTag();
	}
		
	public Result function acct(){
		this.setAction('acct');
		return super.invokeTag();
	}

	public Result function changeDir(){
		this.setAction('changeDir');
		return super.invokeTag();
	}
	
	public Result function createDir(){
		this.setAction('createDir');
		return super.invokeTag();
	}

	public Result function listDir(){
		this.setAction('listDir');
		return super.invokeTag();
	}

	public Result function removeDir(){
		this.setAction('removeDir');
		return super.invokeTag();
	}
	
	public Result function getFile(){
		this.setAction('getFile');
		return super.invokeTag();
	}

	public Result function putFile(){
		this.setAction('putFile');
		return super.invokeTag();
	}

	public Result function rename(){
		this.setAction('rename');
		return super.invokeTag();
	}

	public Result function remove(){
		this.setAction('remove');
		return super.invokeTag();
	}

	public Result function getCurrentDir(){
		this.setAction('getCurrentDir');
		return super.invokeTag();
	}

	public Result function getCurrentUrl(){
		this.setAction('getCurrentUrl');
		return super.invokeTag();
	}

	public Result function existsDir(){
		this.setAction('existsDir');
		return super.invokeTag();
	}
	
	public Result function existsFile(){
		this.setAction('existsFile');
		return super.invokeTag();
	}

	public Result function existsFile(){
		this.setAction('existsFile');
		return super.invokeTag();
	}
	
						
}
