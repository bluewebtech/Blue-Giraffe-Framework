<cfcomponent displayname="Web Application Setting Component" 
	hint="Component contains all methods for the web application portal setting values">

	<cffunction name="configDates" access="public" returntype="string" 
		hint="Method returns the current portal date information from the adminportal table">
		<cfargument name="_date" type="string" />
		
		<cfset var date      = ARGUMENTS._date />
		<cfset var dateArray = StructNew() />
		<cfset var query     = '' />
		
		<cfquery name="query" datasource="administrators">
		SELECT a.id, a.fiscalYear, a.currentYear, a.fiscalStart, a.fiscalEnd
		FROM   adminportal a
		</cfquery>
		
		<cfset dateStruct.fiscalYear  = query.fiscalYear />
		<cfset dateStruct.currentYear = query.currentYear />
		<cfset dateStruct.fiscalStart = DateFormat(query.fiscalStart,'yyyy-mm-dd') />
		<cfset dateStruct.fiscalEnd   = DateFormat(query.fiscalEnd,'yyyy-mm-dd') />
		
		<cfreturn dateStruct[#date#] />
	</cffunction>
	
	<cffunction name="configSiteInfo" access="public" returntype="string" 
		hint="Method returns the specific setting value from the adminportal table">
		<cfargument name="_value" type="string" />
		
		<cfset var value    = ARGUMENTS._value />
		<cfset var getValue = '' />
		<cfset var query    = '' />
		
		<cfquery name="query" datasource="administrators">
		SELECT a.id, a.fiscalYear, a.currentYear, a.fiscalStart, a.fiscalEnd, 
			   a.site_name, a.site_acronym
		FROM   adminportal a
		</cfquery>
		
		<cfset getValue = query["#value#"] />
		
		<cfreturn getValue />
	</cffunction>

</cfcomponent>
