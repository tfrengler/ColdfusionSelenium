<cfscript>

Test = new Capabilities();
writeDump( WebdriverCommandRepository::NewSession(Test) );
writeDump( WebdriverCommandRepository::NavigateTo("http://localhost") );


/*
    Implementer create command param string using WebdriverCommandRepository methods
    Implementer instantiates new Command(), passing in sessionID and params from above (optionally elementid)
    Implementer passes command to CommandProcessor
    CommandProcessor creates an HTTP request based on Command-data
    - Fetch request uri and method from CommandInfo
    - Interpolate session id and optionally element id in request uri
    CommandProcessor sends request to webdriver request uri
    CommandProcessor receives and and reads response
    CommandProcessor returns response string Implementer???
*/
</cfscript>
