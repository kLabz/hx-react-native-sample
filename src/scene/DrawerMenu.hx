
package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.component.*;
import react.native.api.*;
import reactnative.navigation.*;


class DrawerMenu extends ReactComponent {
    public static var styles = StyleSheet.create({
        view : {
            height : '50%',
            flexDirection : 'column',
            alignItems: 'stretch',
            justifyContent:'center'
        },

        text  : {
            height: 50,
            backgroundColor:'steelblue'
        }
    });

    public function new() {
        super();
    }
    
    override function render() {
        var styles = DrawerMenu.styles;
        return jsx('
            <View style=${styles.view}>
                <CustomButton text="Home"/>
                <CustomButton text="Recetes"/>
                <CustomButton text="Favoris"/>
                <CustomButton text="Mon Compte"/>
                <CustomButton text="Réglages"/>
            </View>
        ');
    }
}