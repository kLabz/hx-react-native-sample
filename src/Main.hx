package;

import scene.*;
import react.ReactComponent;
import react.ReactNode;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.navigation.StackNavigator;
import react.native.component.*;

class Main {

	public static function main() {}

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

private typedef NavigatorTab = {
	var screen : ReactComponent;
}

@:expose('HxApp')
class App extends ReactComponent {
	public static var styles = StyleSheet.create({
		container: {
			flex: 1,
			justifyContent: 'center',
			alignItems: 'stretch',
			backgroundColor: '#00FF00',
		}
	});

	var MainStack:ReactNode;
	var items:Array<{name:String}>;
	function new(props) {
		super(props);
		state = { }

		MainStack = StackNavigator.make({
			Home: HomeScene,
			First: scene.Scene1,
			Second: scene.Scene2,
			Third: scene.Scene3
		}, {
			initialRouteName: 'Home',
		});

	}
	override function render() {
		return jsx('
			<View style={styles.container}>
				<MainStack />
			</View>
	  	');
	}
}
