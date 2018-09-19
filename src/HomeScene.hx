
package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.StyleSheet;
import react.native.component.*;
import react.native.component.Button;

typedef HomeProps = {
	? navigator : reactnative.navigation.Navigator,
}

class HomeScene extends ReactComponentOfProps<HomeProps> {

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
		},
		button: {
			color:'blue',
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
	}

	function onPressed(item:{label:String, value:String}, index:Int) {
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
				onPress=${onPressed.bind(items[i], i)}
			/>
		')];
	}
    
	function viewProps() : HomeProps {
		return {
			navigator: props.navigator,
		}
	}

	override function render() {
		return jsx('
			<View style={styles.container} {...viewProps()}>
				<Text style=${styles.text}>The navigation menu</Text>
				${renderList()}
			</View>
	  	');
	}
}