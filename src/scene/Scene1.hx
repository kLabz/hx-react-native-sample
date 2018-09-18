package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.component.*;
import react.native.api.*;

using Lambda;
class Scene1 extends ReactComponent {
	static var styles = Main.styles;
	
	override function render() {

		function renderItem(item:{id:Int, key:String}, index:Int):ReactElement {
			return jsx('<Text>Toto</Text>');
		}
		
		function keyExtractor(o:{key:String, id:Int}, index:Int):String {
			return o.id+'';
		}
		
		var id:Int = 0;
		var data:Array<{key:String, id:Int}> = [for( i in 0...100) 'Toto_$i'].map(function(o) return {id:id++, key:o});

		return jsx('
			<View style={styles.container}>
				<Text style={styles.text}>
					This is Scene1
				</Text>
				<Button 
					title="Back" 
					style={styles.text} 
					onPress=${function() { props.navigation.goBack(); }}
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