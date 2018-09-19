package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;
import reactnative.navigation.Navigation;


class App extends ReactComponent {
	public static var styles = StyleSheet.create({
		container: {
			flex: 1,
			justifyContent: 'center',
			alignItems: 'stretch',
			backgroundColor: '#00FF00',
		}
	});
	
	var items:Array<{name:String}>;
	public function new(props) {
		super(props);
		state = { }
		
		// start the app
		Navigation.startTabBasedApp({
			tabs: [
				{
					label: 'Home',
					screen: 'Home', // this is a registered name for a screen
					//icon: require('../img/one.png'),
					//selectedIcon: require('../img/one_selected.png'), // iOS only
					title: 'Homepage'
				},
				{
					label: 'Second',
					screen: 'Second',
					//icon: require('../img/two.png'),
					//selectedIcon: require('../img/two_selected.png'), // iOS only
					title: 'Screen Two'
				}
			]
		});

		/*
		Navigation.startSingleScreenApp(
            {
                screen: startScreen,
                drawer: {
                    // optional, add this if you want a side menu drawer in your app
                    left: {
                        // optional, define if you want a drawer from the left
                        screen: 'shiteo.pos.SideMenu', // unique ID registered with Navigation.registerScreen
                        passProps: {}, // simple serializable object that will pass as props to all top screens (optional)
                        // disableOpenGesture: false, // can the drawer be opened with a swipe instead of button (optional, Android only)
                        fixedWidth: Dimensions.get("window").width * 2 * PixelRatio.get() / 3 // a fixed width you want your left drawer to have (optional)
                    }
                },
                appStyle: {
                    orientation: 'portrait',
                }
            }
        );
		*/

	}

/*
	override function componentWillMount() {
		Navigation.showModal({
			screen: 'Third',
			title: "Test Modal",
			animationType: 'fade'
		});
	}
*/

	override function render() {
		return jsx('
			<View style={styles.container}>
				
			</View>
	  	');
	}
}