component displayname="Configuration Component" output="false" {
		
	public function init() {
		variables.config = {
	                           root = "/",
	                           domain = "",
	                           appName = "Blue Giraffe Framework",
	                           layouts = "/app/layouts/",
	                           models = "/app/models/",
	                           views = "/app/views/",
	                           controllers = "/app/controllers/",
	                           modelsCFC = "app.models.",
	                           viewsCFC = "app.views.",
	                           controllersCFC = "app.controllers.",
	                           coreCFC = "app.core.",
	                           systemCFC = "app.system."
                           };
		return variables;
	}
		
}