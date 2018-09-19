package reactnative.navigation;

@:jsRequire('react-native-navigation','NativeEventsReceiver')
extern class NativeEventsReceiver {
	public function new();
	public function appLaunched(cb : Void -> Void) : Void;
}