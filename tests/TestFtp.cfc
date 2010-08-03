component extends="mxunit.framework.TestCase" {
	
	include "configs.cfm";

	function setUp(){
		
		variables.ftpConn = new CF.ftp(server=ftp_server,username=ftp_username,password=ftp_pswd);
		variables.ftpConn.open();
		variables.ftpConn.setDirectory(ftp_home);
		if(not variables.ftpConn.existsDir().getPrefix().returnValue){
			variables.ftpConn.createDir();	
		}
	}
	
	function tearDown(){

		variables.ftpConn.setDirectory(ftp_home);
		res = variables.ftpConn.listDir().getResult();
		for(var i = 1; i<= res.recordcount; i++){
			variables.ftpConn.setItem(ftp_home & '/' & res.name[i]);
			variables.ftpConn.remove();
		}		
		variables.ftpConn.close();
		
	}
	
	
	public void function testSimpleCreation(){
		var ftpItem = new CF.ftp();
		assert(isObject(ftpItem));
		
	}
	
	
	public void function testOpen(){
		var ftp = new CF.ftp(server=ftp_server,username=ftp_username,password=ftp_pswd);
		var conn = ftp.open();
		assertTrue(conn.getPrefix().succeeded);
	}
	
	public void function testPutFile(){

		variables.ftpConn.setLocalFile(expandPath('/ServiceAPI/test_samples/ftp1'));
		variables.ftpConn.setRemoteFile(ftp_home & '/ftp1');
		
		var res = variables.ftpConn.putFile();
		assertTrue(res.getPrefix().succeeded);
		
	}
	
	public void function testListDir(){
		variables.ftpConn.setLocalFile(expandPath('/ServiceAPI/test_samples/ftp1'));
		
		variables.ftpConn.setRemoteFile(ftp_home & 'ftp1');
		var res = variables.ftpConn.putFile();
		assertTrue(res.getPrefix().succeeded);
	
		variables.ftpConn.setRemoteFile(ftp_home & '/ftp2');
		var res = variables.ftpConn.putFile();
		assertTrue(res.getPrefix().succeeded);
		
		variables.ftpConn.setDirectory(ftp_home);
		res = variables.ftpConn.listDir().getResult();
		
		assertTrue(res.recordcount eq 2);
		
	}
	
}