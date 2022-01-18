<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfscript>
        static
        {
            static.ProxyTypes = ["pac", "direct", "autodetect", "system", "manual"];
            static.SocksVersions = [4,5];
        }
    </cfscript>

    <cfproperty name="proxyType"          type="string" getter="true" setter="false" />
    <cfproperty name="proxyAutoconfigUrl" type="string" getter="true" setter="true" />
    <cfproperty name="ftpProxy"           type="string" getter="true" setter="true" />
    <cfproperty name="httpProxy"          type="string" getter="true" setter="true" />
    <cfproperty name="noProxy"            type="array" getter="true" setter="true" />
    <cfproperty name="sslProxy"           type="string" getter="true" setter="true" />
    <cfproperty name="socksProxy"         type="string" getter="true" setter="true" />
    <cfproperty name="socksVersion"       type="numeric" getter="true" setter="false" />

    <cffunction name="SetProxyType" returntype="void" access="public" output="false" >
        <cfargument name="value" type="string" required="true" output="false" default="" />

        <cfscript>
            if (!static.ProxyTypes.contains(arguments.value))
            {
                throw("NOT_YET_IMPLEMENTED");
            }

            variables.proxyType = arguments.value;
        </cfscript>
    </cffunction>

    <cffunction name="SetSocksVersion" returntype="void" access="public" output="false" >
        <cfargument name="value" type="numeric" required="true" output="false" default="" />

        <cfscript>
            if (!static.SocksVersions.contains(arguments.value))
            {
                throw("NOT_YET_IMPLEMENTED");
            }

            variables.socksVersion = arguments.value;
        </cfscript>
    </cffunction>

    <cffunction name="init" returntype="Proxy" access="public" output="false" >
    <cfscript>
        variables.proxyType             = "direct";
        variables.proxyAutoconfigUrl    = "";
        variables.ftpProxy              = "";
        variables.httpProxy             = "";
        variables.noProxy               = [];
        variables.sslProxy              = "";
        variables.socksProxy            = "";
        variables.socksVersion          = 4;
    </cfscript>
    </cffunction>

    <cffunction name="Serialize" returntype="string" access="public" output="false" >
        <cfreturn serializeJSON(this) />
    </cffunction>
</cfcomponent>