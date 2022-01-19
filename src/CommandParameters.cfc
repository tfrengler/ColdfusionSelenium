<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfproperty name="URL"  type="struct" getter="true" setter="false" />
    <cfproperty name="Body" type="string" getter="true" setter="false" />

    <cffunction name="init" returntype="CommandParameters" access="public" output="false" >
        <cfargument name="body" type="string" required="false" output="false" default="" />
        <cfargument name="URL" type="struct" required="false" output="false" default="{}" />

        <cfscript>
            if (!structIsEmpty(arguments.URL))
                variables.URL = arguments.URL;

            if (structKeyExists(arguments, "body") && arguments.body.len() > 0)
                variables.body = arguments.Body;
        </cfscript>
    </cffunction>
</cfcomponent>