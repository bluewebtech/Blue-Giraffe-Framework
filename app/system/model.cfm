<cffunction name="model" access="public" returntype="string" output="false">
	<cfargument name="_model_" type="string" />
	<cfreturn CreateObject("component","#application.modelsCFC##arguments._model_#").init() />
</cffunction>