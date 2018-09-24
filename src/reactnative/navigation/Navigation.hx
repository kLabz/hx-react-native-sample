package reactnative.navigation;


typedef LightBoxParamsStyle = {
	var backgroundBlur : String;
	@:optional var backgroundColor : String;
	var tapBackgroundToDismiss:Bool;
}
typedef LightBoxParams = {
	var screen:String;
	var passProps:Dynamic;
	var style: LightBoxParamsStyle;
}

@:jsRequire('react-native-navigation','Navigation')
extern class Navigation {
	static public function registerComponent(name : String, generator : Void -> Dynamic, ? store : Dynamic, ? provider : Dynamic) : Void;
	static public function startTabBasedApp(v : Dynamic) : Void;
	static public function startSingleScreenApp(v : Dynamic) : Void;
	static public function showModal(v : Dynamic) : Void;
	static public function dismissModal(v : Dynamic) : Void;
	static public function dismissAllModals(v : Dynamic) : Void;
	static public function showLightBox(v : LightBoxParams) : Void;
	static public function dismissLightBox(v : Dynamic) : Void;
	static public function handleDeepLink(v : Dynamic) : Void;
	static public function registerScreen(id : String, generator : Void -> Dynamic) : Void;
	static public function getCurrentlyVisibleScreenId() : String;
	static public function isAppLaunched() : js.Promise<Bool>;
}
