<cfparam name="URL.output" default="extjs">
<cfscript>	
testSuite = createObject("component","mxunit.framework.TestSuite").TestSuite();
testSuite.addAll("tests.TestQuery");
testSuite.addAll("tests.TestFtp");
testSuite.addAll("tests.TestHttp");
testSuite.addAll("tests.TestMail");
testSuite.addAll("tests.TestFeed");
results = testSuite.run();
</cfscript>
<cfoutput>#results.getResultsOutput(URL.output)#</cfoutput>  
<!--- <p><hr /></p>
<p>Using CFDUMP against <code>mxunit.TestResult.getResults()</code> method</p>
<cfdump var="#results.getResults()#" label="MXUnit Sample Test Results" />
 --->