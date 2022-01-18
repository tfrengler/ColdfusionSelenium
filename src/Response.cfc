<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfproperty name="SessionID"    type="string" getter="true" setter="false" />
    <cfproperty name="Status"       type="numeric" getter="true" setter="false" />
    <cfproperty name="Value"        type="string" getter="true" setter="false" />

    <cffunction name="init" returntype="CommandInfo" access="public" output="false" >
        <cfargument name="sessionID" type="string" required="true" output="false" default="" />
        <cfargument name="status" type="string" required="true" output="false" default="" />
        <cfargument name="value" type="any" required="true" output="false" default="" hint="Strongly typed implementation of whatever return value the endpoint yielded" />

        <cfscript>
            variables.SessionID = arguments.sessionID;
            variables.Status = arguments.status;
            variables.Value = arguments.value;
        </cfscript>
    </cffunction>
</cfcomponent>