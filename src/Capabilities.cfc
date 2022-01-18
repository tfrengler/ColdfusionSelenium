
<cfcomponent output="false" modifier="final" accessors="false" persistent="true" >

    <cfscript>
		static
        {
			static.PageLoadStrategies        = ["none","eager","normal"];
			static.UnhandledPromptBehaviors  = ["dismiss","accept","dismiss and notify","accept and notify","ignore"];
		}
	</cfscript>

    <cfproperty name="browserName"                  type="string" getter="true" setter="true" />
    <cfproperty name="browserVersion"               type="string" getter="true" setter="true" />
    <cfproperty name="platformName"                 type="string" getter="true" setter="true" />
    <cfproperty name="acceptInsecureCerts"          type="boolean" getter="true" setter="true" />
    <cfproperty name="pageLoadStrategy"             type="string" getter="true" setter="true" />
    <cfproperty name="proxy"                        type="Proxy" getter="true" setter="true" />
    <cfproperty name="setWindowRect"                type="boolean" getter="true" setter="true" />
    <cfproperty name="timeouts"                     type="Timeouts" getter="true" setter="true" />
    <cfproperty name="strictFileInteractability"    type="boolean" getter="true" setter="true" />
    <cfproperty name="unhandledPromptBehavior"      type="string" getter="true" setter="true" />

    <cffunction name="init" returntype="Capabilities" access="public" output="false" >
    <cfscript>
        variables.browserName = "";
        variables.browserVersion = "";
        variables.platformName = "";
        variables.acceptInsecureCerts = false;
        variables.pageLoadStrategy = "normal";
        variables.proxy = new Proxy();
        variables.setWindowRect = false;
        variables.timeouts = new Timeouts();
        variables.strictFileInteractability = false;
        variables.unhandledPromptBehavior = "dismiss and notify";
    </cfscript>
    </cffunction>

    <cffunction name="Serialize" returntype="string" access="public" output="false" >
        <cfreturn serializeJSON(this) />
    </cffunction>
</cfcomponent>