component displayname="Core System Component" output="false" {

	public function init() {
		return this;
	}
	
	public boolean function isInit() {
		var _url_ = cgi.path_info;
		var arrayURL = [];
		var a = "";
		
		for(a = 1; a lte listLen(_url_); a = a + 1) {
			ArrayAppend(arrayUrl, listGetAt(_url_, a));
		}
		
		if(ArrayLen(arrayURL) EQ 1) {
			return true;	
		}
		
		return false;
	}

}