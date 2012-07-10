<cfcomponent displayname="Application Component" output="false">
	
	<cfset this.sessionmanagement = true />
	<cfset this.mappings["app.system.controller"] = getDirectoryFromPath(getCurrentTemplatePath()) />
	
	<cffunction name="onRequestStart" access="public" output="false">
		<cfset application.core = CreateObject('component','app.core.config') />
		
		<cfset application.config = createobject("component","app.config.config").init() />
		<cfset application.root = application.config.config.root />
		<cfset application.domain = application.config.config.domain />
		<cfset application.appName = application.config.config.appName />
		<cfset application.layouts = application.config.config.layouts />
		<cfset application.models = application.config.config.models />
		<cfset application.views = application.config.config.views />
		<cfset application.controllers = application.config.config.controllers />
		<cfset application.modelsCFC = application.config.config.modelsCFC />
		<cfset application.viewsCFC = application.config.config.viewsCFC />
		<cfset application.controllersCFC = application.config.config.controllersCFC />
		<cfset application.coreCFC = application.config.config.coreCFC />
		<cfset application.systemCFC = application.config.config.systemCFC />
		
		<cfset application.loader = CreateObject("component","app.system.loader").init() />
		<cfset application.isinit = application.loader.isInit() />
	</cffunction>

</cfcomponent>