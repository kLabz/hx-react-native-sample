package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;
import reactnative.navigation.Navigation;

@:ignoreEmptyRender
class App extends ReactComponent {

	var menuTabs : Array<{id:String, ?icon:Dynamic, ?selectedIcon:Dynamic, screen:String, ?component:String, ?passProps:Dynamic, ?title:String, ?label:String}>;
	var items:Array<{name:String}>;
	public function new(props) {
		super(props);
		state = { }

		initTabMenu();
		//initSingleScreenNav();
	}

	function initSingleScreenNav() {

		Navigation.startSingleScreenApp( {
                screen: {
					screen: 'Home',
					title: 'Welcome home',
					navigatorStyle: {
						navBarTextFontSize: 16
					}
					/*
					, navigatorButtons: {
						leftButtons: [{
							title: 'Edit', // for a textual button, provide the button title (label)
							id: 'edit', // id for this button, given in onNavigatorEvent(event) to help understand which button was clicked
							testID: 'e2e_rules', // optional, used to locate this view in end-to-end tests
							disabled: false, // optional, used to disable the button (appears faded an-d doesn't interact)
							disableIconTint: true, // optional, by default the image colors are overridden and tinted to navBarButtonColor, set to true to keep the original image colors
							//showAsAction: 'ifRoom', // optional, Android only. Control how the button is displayed in the Toolbar. Accepted valued: 'ifRoom' (default) - Show this item as a button in an Action Bar if the system decides there is room for it. 'always' - Always show this item as a button in an Action Bar. 'withText' - When this item is in the action bar, always show it with a text label even if it also has an icon specified. 'never' - Never show this item as a button in an Action Bar.
							buttonColor: 'blue', // Optional, iOS only. Set color for the button (can also be used in setButtons function to set different button style programatically)
							buttonFontSize: 14, // Set font size for the button (can also be used in setButtons function to set different button style programatically)
							buttonFontWeight: '600', // Set font weight for the button (can also be used in setButtons function to set different button style programatically)
						}]
					}
					*/
				},
                drawer: {
                    // optional, add this if you want a side menu drawer in your app
                    left: {
                        // optional, define if you want a drawer from the left
                        screen: 'scene.DrawerMenu', // unique ID registered with Navigation.registerScreen
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

	public function initTabMenu() {

		menuTabs = [];
		menuTabs.push({
			screen: 'Home', // this is a registered name for a screen
			title: "Home",
			label: 'Home',
			id: 'custom-button',
			icon: js.Lib.require('./assets/timing2.png')
		});

		menuTabs.push({
			id: 'second-screen',
			label: 'Second',
			screen: 'Second',
			icon: js.Lib.require('./assets/haxe-logo/haxe-logo.png'),
			//selectedIcon: 
			title: 'Screen Two'
		});

		var drawer = { // optional, add this if you want a side menu drawer in your app
			left: { // optional, define if you want a drawer from the left
				screen: 'scene.DrawerMenu', // unique ID registered with Navigation.registerScreen
				passProps: {}, // simple serializable object that will pass as props to all top screens (optional),
				fixedWidth: 500, // a fixed width you want your left drawer to have (optional)
			},
			/*
			right: { // optional, define if you want a drawer from the right
				screen: 'example.SecondSideMenu', // unique ID registered with Navigation.registerScreen
				passProps: {}, // simple serializable object that will pass as props to all top screens (optional)
				fixedWidth: 500, // a fixed width you want your right drawer to have (optional)
			},
			*/
			style: { // ( iOS only )
				drawerShadow: true, // optional, add this if you want a side menu drawer shadow
				contentOverlayColor: 'rgba(0,0,0,0.25)', // optional, add this if you want a overlay color when drawer is open
				leftDrawerWidth: 50, // optional, add this if you want a define left drawer width (50=percent)
				rightDrawerWidth: 50, // optional, add this if you want a define right drawer width (50=percent)
				shouldStretchDrawer: true // optional, iOS only with 'MMDrawer' type, whether or not the panning gesture will “hard-stop” at the maximum width for a given drawer side, default : true
			},
			type: 'MMDrawer', // optional, iOS only, types: 'TheSideBar', 'MMDrawer' default: 'MMDrawer'
			animationType: 'door', //optional, iOS only, for MMDrawer: 'door', 'parallax', 'slide', 'slide-and-scale'
												// for TheSideBar: 'airbnb', 'facebook', 'luvocracy','wunder-list'
			disableOpenGesture: false // optional, can the drawer be opened with a swipe instead of button
		};

		Navigation.startTabBasedApp({
			tabs:menuTabs,
			tabsStyle: {
				tabBarHidden:false,
				tabBarTranslucent:false
			},
			drawer:drawer
		});
	}

}