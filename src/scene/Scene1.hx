package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.component.*;
import react.native.api.*;
import reactnative.navigation.*;

using Lambda;

private typedef SceneProps = {
	? navigator : reactnative.navigation.Navigator,
}

private typedef RowData = {
	var key:String;
	var id:Int;
}

class Scene1 extends ReactComponentOfProps<SceneProps> {
	static var styles = Main.styles;
	
	var data:Array<RowData>;
	function new(props:SceneProps) {
		super(props);

		var id:Int = 0;
		data = [for( i in 0...100) 'Toto_$i'].map(function(o) return {id:id++, key:o});
	}


	function onPressed( o: RowData, validated:Bool) {
		//trace("Row licked, click over ? "+validated);
		if( !validated ) return;


		Navigation.showLightBox( {
			screen : 'Popup',
			passProps: {
				message: 'This Overlay screen to display my value ${o.key}'
			},
			style: {
				backgroundBlur : 'dark',
				//backgroundColor: '#00000000',
				tapBackgroundToDismiss: true
			}
		});

		/*
		Navigation.showModal({
			screen: 'Popup',
			title: "Notification",
			passProps: {message:"Coucou mon petit "+o.key},
			animationType: 'slide-up'
		});
		*/
	}

	function renderItem( o:{item:RowData} ) {
		var rowProps = {
			onPress:onPressed.bind(o.item, true),
			onPressIn:onPressed.bind(o.item, false),
			title:o.item.key,
		};

		return jsx('
			<Row {...rowProps} />
		');
	}
	
	function keyExtractor(o:RowData, index:Int):String {
		return o.id+'';
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
					This is Scene1
				</Text>
				<Button 
					title="Back" 
					onPress=$goBack
				/>
				<FlatList
					data=$data
					renderItem=$renderItem
					keyExtractor=$keyExtractor
				/>
			</View>
		');
	}
}
