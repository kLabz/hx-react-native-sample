package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;

class Scene2 extends ReactComponent {
	static var styles = Main.styles;
	
	override function render() {
		return jsx('
			<View style={styles.container}>
				<Text style={styles.text}>
					This is Scene2
				</Text>
				<Button 
					title="Back" 
					onPress=${function() { props.navigation.goBack(); }}
				/>
			</View>
		');
	}
}
