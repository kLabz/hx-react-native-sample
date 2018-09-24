package reactnative.navigation;


private typedef ScreenVisibilityOptionsData = {
	var screen:Dynamic;
	var startTime:Date;
	var endTime:Date;
	var commandType:Dynamic;
}

private typedef ScreenVisibilityOptions = {
	var willAppear: ScreenVisibilityOptionsData -> Void;

    var didAppear: ScreenVisibilityOptionsData -> Void;

    var willDisappear: ScreenVisibilityOptionsData -> Void;

	var didDisappear: ScreenVisibilityOptionsData -> Void;
}

@:jsRequire('react-native-navigation','ScreenVisibilityListener')
extern class ScreenVisibilityListener {
	public function new(options : ScreenVisibilityOptions);
}