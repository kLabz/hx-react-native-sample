package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;
import reactnative.navigation.Navigation;

class Main {
	
	public static function main() {
		registerScreens();
		new App({});
	}

	static function registerScreens():Void {
		Navigation.registerComponent('Home', function() return HomeScene);
  		Navigation.registerComponent('First', function() return scene.Scene1);
  		Navigation.registerComponent('Second', function() return scene.Scene2);
		Navigation.registerComponent('Third', function() return scene.Scene3);
	}

	public static var styles = StyleSheet.create({
		container: {
			flex: 1,
			justifyContent: 'center',
			alignItems: 'center',
			backgroundColor: '#00FFCC',
		},
		text: {
			fontSize: 20,
			textAlign: 'center',
			margin: 10,
		},
		item: {
			margin : 30,
			color : 'red',
		},
		itemText: {
			margin : 30,
			color : 'green',
		}
	});
}