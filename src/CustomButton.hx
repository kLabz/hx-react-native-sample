package;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.StyleSheet;
import react.native.component.*;

/**
This is just for a testing purpose
**/

typedef CustomButtonProps = {
    var text:String;
}

@:jsxStatic('render')
class CustomButton {
    static var styles = StyleSheet.create({
        button: {
            overflow: 'hidden',
            width: 34,
            height: 34,
            borderRadius: 34 / 2,
            justifyContent: 'center',
            alignItems: 'center',
            backgroundColor: 'green'
        },
    });

	static public function render(props : CustomButtonProps) {
		return jsx('
            <TouchableOpacity
                style=${styles.button}
            >
                <View style={${styles.button}}>
                    <Text style={{ color: "red" }}>
                        ${props.text}
                    </Text>
                </View>
            </TouchableOpacity>
        ');
	}

}