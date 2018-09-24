
package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.StyleSheet;
import react.native.component.*;
import react.native.component.Button;
import reactnative.navigation.Navigation;

typedef HomeProps = {
	? navigator : reactnative.navigation.Navigator,
}

class HomeScene extends ReactComponentOfProps<HomeProps> {

	static var navigatorButtons = {
		leftButtons: [{
			icon: js.Lib.require('./assets/menu.png'),
			title: 'Menu', // for a textual button, provide the button title (label)
			id: 'menu', // id for this button, given in onNavigatorEvent(event) to help understand which button was clicked
			_testID: 'e2e_rules', // optional, used to locate this view in end-to-end tests
			_disabled: true, // optional, used to disable the button (appears faded and doesn't interact)
			_disableIconTint: true, // optional, by default the image colors are overridden and tinted to navBarButtonColor, set to true to keep the original image colors
			_showAsAction: 'ifRoom', // optional, Android only. Control how the button is displayed in the Toolbar. Accepted valued: 'ifRoom' (default) - Show this item as a button in an Action Bar if the system decides there is room for it. 'always' - Always show this item as a button in an Action Bar. 'withText' - When this item is in the action bar, always show it with a text label even if it also has an icon specified. 'never' - Never show this item as a button in an Action Bar.
			buttonColor: 'blue', // Optional, iOS only. Set color for the button (can also be used in setButtons function to set different button style programatically)
			buttonFontSize: 14, // Set font size for the button (can also be used in setButtons function to set different button style programatically)
			buttonFontWeight: '600', // Set font weight for the button (can also be used in setButtons function to set different button style programatically)
		}
		/*
		, {
			icon: require('../../img/navicon_add.png'), // for icon button, provide the local image asset name
			id: 'add' // id for this button, given in onNavigatorEvent(event) to help understand which button was clicked
		}*/
		]
	};
	
	public static var styles = StyleSheet.create({
		container: {
			flex: 1,
			justifyContent: 'center',
			alignItems: 'center',
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
		},
		button: {
			//color:'blue',
		}
	});

	var items:Array<{label:String, value:String}>;

	function new(props:HomeProps) {
		super(props);
		state = { }

		items = [
			{ label: 'one', value: 'First' },
			{ label: 'two', value: 'Second' },
			{ label: 'three', value: 'Third' },
		];

		this.props.navigator.setOnNavigatorEvent(this.onNavigatorEvent);
	}

	function onNavigatorEvent(event:{type:String, id:String}) {
		trace("navigator event...");
		if (event.type == 'NavBarButtonPress') { // this is the event type for button presses
			if (event.id == 'menu') { // this is the same id field from the static navigatorButtons definition
				//AlertIOS.alert('NavBar', 'Edit button pressed');
				this.props.navigator.toggleDrawer({
					side: 'left', // the side of the drawer since you can have two, 'left' / 'right'
					animated: true, // does the toggle have transition animation or does it happen immediately (optional)
					//to: 'open' // optional, 'open' = open the drawer, 'closed' = close it, missing = the opposite of current state
				});

				this.props.navigator.setButtons({
					leftButtons: [], // see "Adding buttons to the navigator" below for format (optional)
					rightButtons: [], // see "Adding buttons to the navigator" below for format (optional)
					animated: true // does the change have transition animation or does it happen immediately (optional)
				});
			}
			/*
			if (event.id == 'add') {
				AlertIOS.alert('NavBar', 'Add button pressed');
			}
			*/
		}
	}

	function onCategoryPressed(item:{label:String, value:String}, index:Int) {
		trace('Navigating to ${item.value}');
		this.props.navigator.push({
			screen: item.value, // unique ID registered with Navigation.registerScreen
			title: item.label, // navigation bar title of the pushed screen (optional)
			subtitle: "sous menu", // navigation bar subtitle of the pushed screen (optional)
			animated: true, // does the push have transition animation or does it happen immediately (optional)
			animationType: 'slide-horizontal', // 'fade' (for both) / 'slide-horizontal' (for android) does the push have different transition animation (optional)
			backButtonTitle: "back to me", // override the back button title (optional)
			backButtonHidden: false, // hide the back button altogether (optional)
		});
	}
	
	function renderList() {
		var styles = HomeScene.styles;
		return [for( i in 0...items.length) jsx('
			<Button 
				key=${i}
				title=${items[i].label}
				style=${styles.button}
				onPress=${onCategoryPressed.bind(items[i], i)}
			/>
		')];
	}
    
	function viewProps() : HomeProps {
		return {
			navigator: props.navigator,
		}
	}

	override function componentDidMount() {
	}

	override function render() {
		return jsx('
			<View style={styles.container} {...viewProps()}>
				<Image source=${js.Lib.require('./assets/m.png')} />
				<Text style=${styles.text}>The navigation menu</Text>
				${renderList()}
			</View>
	  	');
	}
}