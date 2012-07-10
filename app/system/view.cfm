<cffunction name="view" access="public" returntype="void">
	<cfargument name="_view_" type="string" />
	<cfinclude template="#application.views##arguments._view_#.cfm" />
</cffunction>