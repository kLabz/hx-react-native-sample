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
		
		// There's a library issue to load the menu icons
		/*
		Navigation.startTabBasedApp({
			tabs: [
				{
					label: 'Home',
					screen: 'Home', // this is a registered name for a screen
					icon: js.Lib.require('./assets/icon_message.png'),
					iconInsets: { top: 0, left: 0, bottom: 0, right: 0 },
					//selectedIcon: require('../img/one_selected.png'), // iOS only
					title: 'Homepage'
				},
				{
					label: 'Second',
					screen: 'Second',
					icon: js.Lib.require('img_assets/icon_cloud/cloud.png'),
					iconInsets: { top: 0, left: 0, bottom: 0, right: 0 },
					//selectedIcon: require('../img/two_selected.png'), // iOS only
					title: 'Screen Two'
				}
			],
			tabsStyle: {
				tabBarButtonColor: '#FF0000',
				tabBarSelectedButtonColor: '#00adf5'
			},
			appStyle: {
				tabBarButtonColor: '#000000', // BottomTabs unselected button color
				tabBarSelectedButtonColor: '#00adf5', // BottomTabs selected button color
			}
		});
		*/

		
		Navigation.startSingleScreenApp( {
                screen: {
					screen: 'Home',
					title: 'Welcome home',
					navigatorStyle: {
						navBarTextFontSize: 16
					},
					navigatorButtons: {
						leftButtons: [{
							title: 'Edit', // for a textual button, provide the button title (label)
							id: 'edit', // id for this button, given in onNavigatorEvent(event) to help understand which button was clicked
							testID: 'e2e_rules', // optional, used to locate this view in end-to-end tests
							disabled: false, // optional, used to disable the button (appears faded and doesn't interact)
							disableIconTint: true, // optional, by default the image colors are overridden and tinted to navBarButtonColor, set to true to keep the original image colors
							//showAsAction: 'ifRoom', // optional, Android only. Control how the button is displayed in the Toolbar. Accepted valued: 'ifRoom' (default) - Show this item as a button in an Action Bar if the system decides there is room for it. 'always' - Always show this item as a button in an Action Bar. 'withText' - When this item is in the action bar, always show it with a text label even if it also has an icon specified. 'never' - Never show this item as a button in an Action Bar.
							buttonColor: 'blue', // Optional, iOS only. Set color for the button (can also be used in setButtons function to set different button style programatically)
							buttonFontSize: 14, // Set font size for the button (can also be used in setButtons function to set different button style programatically)
							buttonFontWeight: '600', // Set font weight for the button (can also be used in setButtons function to set different button style programatically)
						}]
					}
				},
                drawer: {
                    // optional, add this if you want a side menu drawer in your app
                    left: {
                        // optional, define if you want a drawer from the left
                        screen: 'First', // unique ID registered with Navigation.registerScreen
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
	}

	function closeModale() {
		Navigation.dismissModal({
			animationType: 'slide-down'
		});
	}

	function onNavigatorEvent(e : { id : String }) {
		trace("App onNavigatorEvent : "+e);
		switch(e.id) {
			case "edit":
				closeModale();
			case "close-btn":
				closeModale();
		} 
	}

	override function componentWillMount() {
		props.navigator.setOnNavigatorEvent(onNavigatorEvent);
	}

	override function render() {
		return jsx('
			<View style={styles.container}>
			</View>
	  	');
	}
}