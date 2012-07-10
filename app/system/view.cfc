component displayname="View Component" output="false" {

	public function init() {
		return this;
	}
	
	public function view(_view_) {
		include "#application.views##arguments._view_#.cfm";
	}

}