<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >
    <cfscript>

        static {

            LocatorStrategies =
            {
                CSS_SELECTOR: "css selector",
                LINK_TEXT: "link text",
                PARTIAL_LINK_TEXT: "partial link text",
                TAG_NAME: "tag name",
                XPATH: "xpath"
            }

        }

        public static string function NewSession(required Capabilities data)
        {
        }

        public static string function NavigateTo(required string url)
        {
            return serializeJSON({ "url": arguments.url });
        }

        public static string function FindElement(required string using, required string value)
        {
            return serializeJSON({ "using": arguments.using, "value": arguments.value });
        }

    </cfscript>
</cfcomponent>