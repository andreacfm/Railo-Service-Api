component extends="base" {

	/*
	property string from; 
    property string to; 
    property string subject; 
    property string bcc; 
    property string cc; 
    property string charset; 
    property boolean debug; 
    property string failto; 
    property string group; 
    property boolean groupcasesensitive; 
    property string mailerid; 
    property numeric maxrows; 
    property string mimeattach; 
    property string password; 
    property numeric port; 
    property numeric priority; 
    property query query; 
    property string replyto; 
    property string server; 
    property boolean spoolenable; 
    property numeric startrow; 
    property numeric timeout; 
    property string type; 
    property string username; 
    property boolean useSSL;
    property boolean useTLS; 
    property string wraptext; 
    property boolean remove;
	*/
		
	variables.tagname = "mail";
						
	public any function send(){
		return super.invokeTag(getTagName(), getTagAttributes());
	}
						
						
}
