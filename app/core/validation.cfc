component displayname="Core Validation Component" output="false" {

	function init() {
		return this;
	}
	
	public function validate(_value_) {
		if(len(arguments._value_) GT 0) {
			return true;
		} else {
			return false;
		}
	}

}