package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;


private typedef SceneProps = {
	? navigator : reactnative.navigation.Navigator,
}

class Scene3 extends ReactComponentOfProps<SceneProps> {
	static var styles = Main.styles;
	
	function new(props:SceneProps) {
		super(props);
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
					style={styles.text} 
					onPress=$goBack
				/>
			</View>
		');
	}
}