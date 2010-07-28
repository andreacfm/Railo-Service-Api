component extends="mxunit.framework.TestCase" {
	
	function setUp(){
		deleteEmails();
	}
	
	function tearDown(){
	//deleteEmails();
	}
	
	function testSimpleCreation(){
		var mailService = new CF.mail();
		assert(isObject(mailService));
	}
	
	function testConstructorSendEmail(){
	
		var param = {from:"mark.drew@gmail.com",to:"mark.drew@gmail.com",subject:"TestEmail1", body:"Hello World"};
		var mailService = new CF.mail(argumentCollection=param);
			mailService.send();
			
		var file = getSentEmail();
		Assert(FindNoCase("To: mark.drew@gmail.com", file));
		Assert(FindNoCase("From: mark.drew@gmail.com", file));
		Assert(FindNoCase("Subject: TestEmail1", file));
		Assert(FindNoCase("Hello World", file));		
	}
	

	function testAttributeSendEmail(){
	
		var mailService = new CF.mail();
			mailService.setFrom("mark.drew@gmail.com");
			mailService.setTo("mark.drew@gmail.com");
			mailService.setSubject("TestEmail2");
			mailService.setBody("Hello Test2");
			mailService.send();
			
		var file = getSentEmail();
		Assert(FindNoCase("To: mark.drew@gmail.com", file), "TO not found");
		Assert(FindNoCase("From: mark.drew@gmail.com", file), "FROM not found");
		Assert(FindNoCase("Subject: TestEmail2", file), "SUBJECT not found");
		Assert(FindNoCase("Hello Test2", file), "BODY not found");
		Assert(FindNoCase("Content-Type: text/plain;", file), "Type is incorrect");	

	}	
	
	function testHTMLSendEmail(){
	var mailService = new CF.mail();
			mailService.setFrom("mark.drew@gmail.com");
			mailService.setTo("mark.drew@gmail.com");
			mailService.setSubject("TestEmail2");
			mailService.setBody("Hello Test2");
			mailService.setType("HTML");
			mailService.send();
			
			var file = getSentEmail();
		Assert(FindNoCase("To: mark.drew@gmail.com", file), "TO not found");
		Assert(FindNoCase("From: mark.drew@gmail.com", file), "FROM not found");
		Assert(FindNoCase("Subject: TestEmail2", file), "SUBJECT not found");
		Assert(FindNoCase("Hello Test2", file), "BODY not found");
		Assert(FindNoCase("Content-Type: text/html;", file), "Type is incorrect");		
	
	}
	
	function testSendAttachment(){
		var mailService = new CF.mail();
		
			mailService.setFrom("mark.drew@gmail.com");
			mailService.setTo("mark.drew@gmail.com");
			mailService.setSubject("TestEmail2");
			mailService.setBody("Hello Test2");
			mailService.setType("HTML");
			mailService.addParam(file=expandpath("/railo_acf_cfc/test_samples/query.csv"),type="text/plain",remove=false)
						.addParam(name="testHeader", value="testHeaderValue"); 
	
			mailService.addPart(charset:"utf-8",type:"text", body:"This is the main body text part")
						.addPart(charset:"utf-8",type:"html", body:"This is the <strong>html</strong> body text part");
			mailService.send();
			
		var file = getSentEmail();
		Assert(FindNoCase("Content-Type: multipart/mixed;", file), "No multipart found")
		Assert(FindNoCase("testHeader: testHeaderValue", file), "No extra header found");	
		Assert(FindNoCase("------=_Part_", file), "No Attachment Part found");	
		Assert(FindNoCase("Content-Disposition: attachment; filename=query.csv", file), "Wrong attachment added");						

	}
	
	
	function testAttributesPartsParams(){
	
			var mailService = new CF.mail();
		
			mailService.setFrom("mark.drew@gmail.com");
			mailService.setTo("mark.drew@gmail.com");
			mailService.setSubject("TestEmail2");
			mailService.setBody("Hello Test2");
			mailService.setType("HTML");
			mailService.addParam(file=expandpath("/railo_acf_cfc/test_samples/query.csv"),type="text/plain",remove=false)
						.addParam(name="testHeader", value="testHeaderValue"); 
	
			mailService.addPart(charset:"utf-8",type:"text", body:"This is the main body text part")
						.addPart(charset:"utf-8",type:"html", body:"This is the <strong>html</strong> body text part");
	
			var parts = mailService.getParts();
			Assert(isArray(parts));
			Assert(ArrayLen(parts));
			
			var attributes = mailService.getAttributes();
			Assert(isStruct(attributes));
			Assert(Len(StructKeyList(attributes)));
			
			var params = mailService.getParams();
			Assert(isArray(params));
			Assert(ArrayLen(params));
			
			mailService.clear();
			
			var parts = mailService.getParts();
			Assert(isArray(parts));
			Assert(NOT ArrayLen(parts));
			
			var attributes = mailService.getAttributes();
			Assert(isStruct(attributes));
			Assert(NOT Len(StructKeyList(attributes)));
			
			var params = mailService.getParams();
			Assert(isArray(params));
			Assert(NOT ArrayLen(params));
			
					
	
	}
	
	
	function testWebServiceCall(){
	
	
	
	}
	
	private any function getSentEmail(){
		sleep(500);
		var files = DirectoryList(expandPath("/railo_acf_cfc/tests/outmail"));
		//We should only have one file
		Assert(ArrayLen(files) IS 1);
		//Get the first file
		return FileRead(files[1]);
	}
	
	private void function deleteEmails(){
		var files = DirectoryList(expandPath("/railo_acf_cfc/tests/outmail"));
		for(file in Files){
			FileDelete(Files[file])
		}
	}
	
	
}