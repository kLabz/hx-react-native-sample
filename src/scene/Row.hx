package scene;

import react.ReactComponent;
import react.component.*;
import react.ReactMacro.jsx;
import react.native.api.StyleSheet;
import react.native.component.TouchableHighlight;
import react.native.component.Button;
import react.native.component.View;
import react.native.component.Text;
import reactnative.navigation.Navigation;

//TODO
typedef RowProps = {
    var onPress:Dynamic->Void;
    var onPressIn:Dynamic->Void;
    var title:String;
}
//rgba(0, 0, 0, 0.1)
class Row extends ReactComponentOfProps<RowProps> {
    public static var styles = StyleSheet.create({
        highlight : {
            color : 'red'
        },
        row: {
            height: 48,
            width:1,
            paddingHorizontal: 16,
            flexDirection: 'row',
            alignItems: 'center',
            justifyContent: 'center',
            borderBottomWidth: 1,
            borderBottomColor: 'green'
        },
        text: {
            fontSize: 16,
        }
    });

    public function new(props:RowProps) {
        super(props);
    }

    override function render() {
        var styles = Row.styles;

        return jsx('
            <TouchableHighlight
                onPress=${props.onPress}
                onPressIn=${props.onPressIn}
                underlayColor="#555555"
            >
                <View style={styles.row}>
                    <Text style={styles.text}>${props.title}</Text>
                </View>
            </TouchableHighlight>
        ');
    }
}