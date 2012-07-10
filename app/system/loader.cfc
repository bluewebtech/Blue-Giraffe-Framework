component displayname="Main Loader Component" output="false" {

	public function init() {
		return this;
	}
	
	public function request() {
		param name="url.page" default="";
		
		var _file_ = "";
		var _page_ = "";
		var _url_ = cgi.path_info;
		var list = replace(_url_, "/", ",", "all");
		var arrayUrl = [];
		
		for(i = 1; i lte listLen(list); i = i + 1) {
			ArrayAppend(arrayUrl, listGetAt(list, i));
		}
		
		if(ArrayIsDefined(arrayURL, 1)) {
			_page_ = arrayURL[1];
			_file_ = ExpandPath("./") & "app\controllers\" & arrayURL[1] & ".cfc";
		} else {
			_page_ = "index";
			_file_ = ExpandPath("./") & "app\controllers\" & _page_ & ".cfc";
		}
		
		if(FileExists(_file_)) {
			controller = CreateObject("component","#application.controllersCFC##_page_#").init();
			
			if(ArrayIsDefined(arrayURL, 2)) {
				controller.$fn = controller[arrayURL[2]];
				
				if(ArrayIsDefined(arrayURL, 3)) {
					writeoutput(controller.$fn(arrayURL[3]));
				} else {
					writeoutput(controller.$fn(arrayURL[2]));
				}
			}
		} else {
			controller = CreateObject("component","#application.controllersCFC#error").init();
		}
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