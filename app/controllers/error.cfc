component displayname="Error Component" extends="controller" output="false" {

	public function init() {
		view("errors/error");
		return this;
	}

}