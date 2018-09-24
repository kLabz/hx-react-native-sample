package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;
import reactnative.navigation.Navigation;


private typedef SceneProps = {
	? navigator : reactnative.navigation.Navigator,
}

class Scene3 extends ReactComponentOfProps<SceneProps> {
	static var styles = Main.styles;
	
	static var navigatorButtons = {
		leftButtons: [{ id: 'null' }],
		rightButtons: [{
			id: 'close-btn', // id for this button, given in onNavigatorEvent(event) to help understand which button was clicked
			icon: js.Lib.require('./assets/icon-message/icon_message.png'), // for icon button, provide the local image asset name
			//buttonColor: 'rgb(128,41,76)', // Optional, iOS only. Set color for the button (can also be used in setButtons function to set different button style programatically)
		}]
	};

	function new(props:SceneProps) {
		super(props);
	}

	override function componentDidMount() {
		props.navigator.setOnNavigatorEvent(onNavigatorEvent);
	}

	function closeModale() {
		Navigation.dismissModal({
			animationType: 'slide-down'
		});
	}

	function onNavigatorEvent(e : { id : String }) {
		trace("Scene3 onNavigatorEvent : "+e.id);
		switch( e.id ) {
			case "close-btn" : closeModale();
		}
	}

	function goBack() {
		this.props.navigator.pop({
			animated: true, // does the pop have transition animation or does it happen immediately (optional)
			animationType: 'fade', // 'fade' (for both) / 'slide-horizontal' (for android) does the pop have different transition animation (optional)
		});
	}

	override function render() {
		return jsx('
			<View style={styles.container}>
				<Text style={styles.text}>
					This is Scene3
				</Text>
				<Button 
					title="Back" 
					color="#ffcc00"
					onPress=$goBack
				/>
			</View>
		');
	}
}
