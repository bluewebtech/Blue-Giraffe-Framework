component displayname="Main Core Validation Component" output="false" {

	function init() {
		this.validation = CreateObject("component","#APPLICATION.coreCFC#validation").init();
		return this;
	}

}