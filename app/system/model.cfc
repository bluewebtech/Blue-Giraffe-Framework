component displayname="Model Component" output="false" {

	public function init() {
		return this;
	}
	
	public function model(_model_) {
		return CreateObject("component","#application.modelsCFC##arguments._model_#").init();
	}
	
	public function set(_value_) {
		variables._value_ = arguments._value_;
	}
	
	public function get() {
		return variables._value_;
	}

}