<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfproperty name="name"       type="string" getter="true" setter="false" />
    <cfproperty name="parameters" type="CommandParameters" getter="false" setter="false" />
    <cfproperty name="sessionID"  type="string" getter="true" setter="false" />
    <cfproperty name="elementID"  type="string" getter="true" setter="false" />

    <cffunction name="init" returntype="Command" access="public" output="false" >
        <cfargument name="name" type="string" required="true" output="false" default="" />
        <cfargument name="parameters" type="CommandParameters" required="true" output="false" default="" />
        <cfargument name="sessionID" type="string" required="true" output="false" default="" />
        <cfargument name="elementID" type="string" required="false" output="false" default="" />

        <cfscript>
            variables.name = arguments.name;
            variables.parameters = arguments.parameters;
            variables.sessionID = arguments.sessionID;
            variables.elementID = arguments.elementID;
        </cfscript>
    </cffunction>

    <cffunction name="ResolveURL" returntype="string" access="public" output="false" >
        <cfargument name="requestPath" type="string" required="true" output="false" default="" />

    </cffunction>

    <cffunction name="GetBody" returntype="string" access="public" output="false" >
        <cfreturn variables.parameters.GetBody() />
    </cffunction>
</cfcomponent>