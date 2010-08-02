component extends="base"{
		
	variables.tagname = "ftp";
					
	public any function open(){
		setAction('open');
		return super.invokeTag();
	}

	public any function close(){
		setAction('close');
		return super.invokeTag();
	}

	public any function quote(){
		setAction('quote');
		return super.invokeTag();
	}

	public any function site(){
		setAction('site');
		return super.invokeTag();
	}

	public any function allo(){
		setAction('allo');
		return super.invokeTag();
	}
		
	public any function acct(){
		setAction('acct');
		return super.invokeTag();
	}

	public any function changeDir(){
		setAction('changeDir');
		return super.invokeTag();
	}
	
	public any function createDir(){
		setAction('createDir');
		return super.invokeTag();
	}

	public any function listDir(){
		setAction('listDir');
		return super.invokeTag();
	}

	public any function removeDir(){
		setAction('removeDir');
		return super.invokeTag();
	}
	
	public any function getFile(){
		setAction('getFile');
		return super.invokeTag();
	}

	public any function putFile(){
		setAction('putFile');
		return super.invokeTag();
	}

	public any function rename(){
		setAction('rename');
		return super.invokeTag();
	}

	public any function remove(){
		setAction('remove');
		return super.invokeTag();
	}

	public any function getCurrentDir(){
		setAction('getCurrentDir');
		return super.invokeTag();
	}

	public any function getCurrentUrl(){
		setAction('getCurrentUrl');
		return super.invokeTag();
	}

	public any function existDir(){
		setAction('existDir');
		return super.invokeTag();
	}
	
	public any function existsFile(){
		setAction('existsFile');
		return super.invokeTag();
	}

	public any function existsFile(){
		setAction('existsFile');
		return super.invokeTag();
	}
	
						
}
