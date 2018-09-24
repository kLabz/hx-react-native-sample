
package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.StyleSheet;
import react.native.component.*;
import react.native.component.Button;

class HomeScene extends ReactComponent {

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
	function new(props) {
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
		this.props.navigation.navigate(item.value);
		//onPress=${this.props.navigation.navigate('Item', { title: item.label })}
	}
	
	function renderList() {
		var styles = HomeScene.styles;
		return [for( i in 0...items.length) jsx('
			<Button 
				key=${i}
				title=${items[i].label}
				onPress=${onPressed.bind(items[i], i)}
			/>
		')];
	}
    
	override function render() {
		return jsx('
			<View style={styles.container}>
				<Text style=${styles.text}>The navigation menu</Text>
				${renderList()}
			</View>
	  	');
	}
}