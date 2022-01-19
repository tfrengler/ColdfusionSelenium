<cfscript>

Test = new http(method = "GET", charset = "utf-8", url = "http://frenglerslair.nl/");
Test.addParam(name = "q", type = "url", value = "cfml");
Result = result = Test.send();

writeDump(Result.getPrefix());

</cfscript>
