<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >
    <cfscript>

        public static CommandParameters function NewSession(required Capabilities data)
        {
            return new CommandParameters(body=arguments.data.Serialize());
        }

        public static string function NavigateTo(required string url)
        {
            return new CommandParameters(body=serializeJSON({ "url": arguments.url }));
        }

        public static string function FindElement(required string using, required string value)
        {
            return new CommandParameters(body=serializeJSON({ "using": arguments.using, "value": arguments.value }));
        }

    </cfscript>
</cfcomponent>