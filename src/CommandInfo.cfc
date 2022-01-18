<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfproperty name="ResourcePath" type="string" getter="true" setter="false" />
    <cfproperty name="Method" type="string" getter="true" setter="false" />

    <cffunction name="init" returntype="CommandInfo" access="public" output="false" >
        <cfargument name="resourcePath" type="string" required="true" output="false" default="" />
        <cfargument name="method" type="string" required="true" output="false" default="" />

        <cfscript>
            variables.ResourcePath = arguments.resourcePath;
            variables.Method = arguments.method;
        </cfscript>
    </cffunction>
</cfcomponent>