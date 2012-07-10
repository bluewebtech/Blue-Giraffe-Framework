component displayname="Main Controller Component" output="false" {
	
	this.obj = StructNew();
	this.obj.view = new view();
	this.obj.model = new model();
	this.obj.core = new core();
	
	public function init() {
		return this;	
	}
	
	public function view(_view_) {
		return this.obj.view.view(_view_);
	}
	
	public function model(_model_) {
		return this.obj.model.model(_model_);
	}

}