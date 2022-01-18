<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfproperty name="script"   type="numeric" getter="true" setter="true" />
    <cfproperty name="pageLoad" type="numeric" getter="true" setter="true" />
    <cfproperty name="implicit" type="numeric" getter="true" setter="true" />

    <cffunction name="init" returntype="Proxy" access="public" output="false" >
    <cfscript>
        variables.script = 30000;
        variables.pageLoad = 300000;
        variables.implicit = 0;
    </cfscript>
    </cffunction>

    <cffunction name="Serialize" returntype="string" access="public" output="false" >
        <cfreturn serializeJSON(this) />
    </cffunction>
</cfcomponent>