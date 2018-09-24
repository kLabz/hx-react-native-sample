// Generated by Haxe 3.4.7
(function () { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var React_Component = require("react").Component;
var App = function(props) {
	React_Component.call(this,props);
	this.state = { };
	this.initTabMenu();
};
App.__super__ = React_Component;
App.prototype = $extend(React_Component.prototype,{
	initSingleScreenNav: function() {
		var tmp = react_native_api_Dimensions.get("window").width * 2 * react_native_api_PixelRatio.get() / 3;
		reactnative_navigation_Navigation.startSingleScreenApp({ screen : { screen : "Home", title : "Welcome home", navigatorStyle : { navBarTextFontSize : 16}}, drawer : { left : { screen : "scene.DrawerMenu", passProps : { }, fixedWidth : tmp}}, appStyle : { orientation : "portrait"}});
	}
	,initTabMenu: function() {
		this.menuTabs = [];
		this.menuTabs.push({ screen : "Home", title : "Home", label : "Home", id : "custom-button", icon : require("./assets/timing2.png")});
		this.menuTabs.push({ id : "second-screen", label : "Second", screen : "Second", icon : require("./assets/haxe-logo/haxe-logo.png"), title : "Screen Two"});
		var drawer = { left : { screen : "scene.DrawerMenu", passProps : { }, fixedWidth : 500}, style : { drawerShadow : true, contentOverlayColor : "rgba(0,0,0,0.25)", leftDrawerWidth : 50, rightDrawerWidth : 50, shouldStretchDrawer : true}, type : "MMDrawer", animationType : "door", disableOpenGesture : false};
		reactnative_navigation_Navigation.startTabBasedApp({ tabs : this.menuTabs, tabsStyle : { tabBarHidden : false, tabBarTranslucent : false}, drawer : drawer});
	}
});
var react_native_api_StyleSheet = require("react-native").StyleSheet;
var CustomButton = function() { };
CustomButton.render = function(props) {
	return React.createElement(react_native_component_TouchableOpacity,{ style : CustomButton.styles.button},React.createElement(react_native_component_View,{ style : CustomButton.styles.button},React.createElement(react_native_component_Text,{ style : { color : "red"}},props.text)));
};
var HomeScene = function(props) {
	React_Component.call(this,props);
	this.state = { };
	this.items = [{ label : "one", value : "First"},{ label : "two", value : "Second"},{ label : "three", value : "Third"}];
	this.props.navigator.setOnNavigatorEvent($bind(this,this.onNavigatorEvent));
};
HomeScene.__super__ = React_Component;
HomeScene.prototype = $extend(React_Component.prototype,{
	onNavigatorEvent: function(event) {
		console.log("navigator event...");
		if(event.type == "NavBarButtonPress") {
			if(event.id == "menu") {
				this.props.navigator.toggleDrawer({ side : "left", animated : true});
				this.props.navigator.setButtons({ leftButtons : [], rightButtons : [], animated : true});
			}
		}
	}
	,onCategoryPressed: function(item,index) {
		console.log("Navigating to " + item.value);
		this.props.navigator.push({ screen : item.value, title : item.label, subtitle : "sous menu", animated : true, animationType : "slide-horizontal", backButtonTitle : "back to me", backButtonHidden : false});
	}
	,renderList: function() {
		var styles = HomeScene.styles;
		var _g = [];
		var _g2 = 0;
		var _g1 = this.items.length;
		while(_g2 < _g1) {
			var i = _g2++;
			_g.push(React.createElement(react_native_component_Button,{ key : i, style : styles.button, onPress : (function(a2,a1,f) {
				return function() {
					f[0](a1[0],a2[0]);
				};
			})([i],[this.items[i]],[$bind(this,this.onCategoryPressed)]), title : this.items[i].label}));
		}
		return _g;
	}
	,viewProps: function() {
		return { navigator : this.props.navigator};
	}
	,componentDidMount: function() {
	}
	,render: function() {
		var tmp = this.viewProps();
		return React.createElement(react_native_component_View,Object.assign({ },tmp,{ style : HomeScene.styles.container}),React.createElement(react_native_component_Image,{ source : require("./assets/m.png")}),React.createElement(react_native_component_Text,{ style : HomeScene.styles.text},"The navigation menu"),this.renderList());
	}
});
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var Main = function() { };
Main.main = function() {
	Main.registerScreens();
	var app = new App({ });
};
Main.registerScreens = function() {
	reactnative_navigation_Navigation.registerComponent("Home",function() {
		return HomeScene;
	});
	reactnative_navigation_Navigation.registerComponent("First",function() {
		return scene_Scene1;
	});
	reactnative_navigation_Navigation.registerComponent("Second",function() {
		return scene_Scene2;
	});
	reactnative_navigation_Navigation.registerComponent("Third",function() {
		return scene_Scene3;
	});
	reactnative_navigation_Navigation.registerComponent("Popup",function() {
		return scene_Popup;
	});
	reactnative_navigation_Navigation.registerComponent("scene.DrawerMenu",function() {
		return scene_DrawerMenu;
	});
};
var enums_Enums = function() { };
var React = require("react");
var react_ReactMacro = function() { };
var react_component_props__$Props_Children_$Impl_$ = {};
react_component_props__$Props_Children_$Impl_$.get_length = function(this1) {
	if((this1 instanceof Array) && this1.__enum__ == null) {
		return this1.length;
	} else {
		return 1;
	}
};
react_component_props__$Props_Children_$Impl_$.get = function(this1,index) {
	if((this1 instanceof Array) && this1.__enum__ == null) {
		return this1[index];
	} else {
		return this1;
	}
};
var react_native_api_Dimensions = require("react-native").Dimensions;
var react_native_api_PixelRatio = require("react-native").PixelRatio;
var react_native_component_Button = require("react-native").Button;
var react_native_component_FlatList = require("react-native").FlatList;
var react_native_component_Image = require("react-native").Image;
var react_native_component_Text = require("react-native").Text;
var react_native_component_TouchableHighlight = require("react-native").TouchableHighlight;
var react_native_component_TouchableOpacity = require("react-native").TouchableOpacity;
var react_native_component_View = require("react-native").View;
var reactnative_navigation_Navigation = require("react-native-navigation").Navigation;
var scene_DrawerMenu = function() {
	React_Component.call(this);
};
scene_DrawerMenu.__super__ = React_Component;
scene_DrawerMenu.prototype = $extend(React_Component.prototype,{
	render: function() {
		var styles = scene_DrawerMenu.styles;
		return React.createElement(react_native_component_View,{ style : styles.view},{ "$$typeof" : $$tre, type : CustomButton.render, props : { text : "Home"}, key : null, ref : null},{ "$$typeof" : $$tre, type : CustomButton.render, props : { text : "Recetes"}, key : null, ref : null},{ "$$typeof" : $$tre, type : CustomButton.render, props : { text : "Favoris"}, key : null, ref : null},{ "$$typeof" : $$tre, type : CustomButton.render, props : { text : "Mon Compte"}, key : null, ref : null},{ "$$typeof" : $$tre, type : CustomButton.render, props : { text : "Réglages"}, key : null, ref : null});
	}
});
var scene_Popup = function(props) {
	React_Component.call(this,props);
};
scene_Popup.__super__ = React_Component;
scene_Popup.prototype = $extend(React_Component.prototype,{
	render: function() {
		var styles = scene_Popup.styles;
		return React.createElement(react_native_component_View,{ style : styles.view},React.createElement(react_native_component_Text,{ style : styles.text},this.props.message));
	}
});
var scene_Row = function(props) {
	React_Component.call(this,props);
};
scene_Row.__super__ = React_Component;
scene_Row.prototype = $extend(React_Component.prototype,{
	render: function() {
		var styles = scene_Row.styles;
		return React.createElement(react_native_component_TouchableHighlight,{ underlayColor : "#555555", onPress : this.props.onPress, onPressIn : this.props.onPressIn},React.createElement(react_native_component_View,{ style : styles.row},React.createElement(react_native_component_Text,{ style : styles.text},this.props.title)));
	}
});
var scene_Scene1 = function(props) {
	React_Component.call(this,props);
	var id = 0;
	var _g = [];
	var _g1 = 0;
	while(_g1 < 100) {
		var i = _g1++;
		_g.push("Toto_" + i);
	}
	this.data = _g.map(function(o) {
		id += 1;
		return { id : id - 1, key : o};
	});
};
scene_Scene1.__super__ = React_Component;
scene_Scene1.prototype = $extend(React_Component.prototype,{
	onPressed: function(o,validated) {
		if(!validated) {
			return;
		}
		reactnative_navigation_Navigation.showLightBox({ screen : "Popup", passProps : { message : "This Overlay screen to display my value " + o.key}, style : { backgroundBlur : "dark", tapBackgroundToDismiss : true}});
	}
	,renderItem: function(o) {
		var f = $bind(this,this.onPressed);
		var o1 = o.item;
		var rowProps = function() {
			f(o1,true);
		};
		var f1 = $bind(this,this.onPressed);
		var o2 = o.item;
		var rowProps1 = { onPress : rowProps, onPressIn : function() {
			f1(o2,false);
		}, title : o.item.key};
		return { "$$typeof" : $$tre, type : scene_Row, props : rowProps1, key : null, ref : null};
	}
	,keyExtractor: function(o,index) {
		return o.id + "";
	}
	,goBack: function() {
		this.props.navigator.pop({ animated : true, animationType : "fade"});
	}
	,render: function() {
		return React.createElement(react_native_component_View,{ style : scene_Scene1.styles.container},React.createElement(react_native_component_Text,{ style : scene_Scene1.styles.text},"This is Scene1"),React.createElement(react_native_component_Button,{ style : scene_Scene1.styles.text, onPress : $bind(this,this.goBack), title : "Back"}),React.createElement(react_native_component_FlatList,{ keyExtractor : $bind(this,this.keyExtractor), data : this.data, renderItem : $bind(this,this.renderItem)}));
	}
});
var scene_Scene2 = function(props) {
	React_Component.call(this,props);
};
scene_Scene2.__super__ = React_Component;
scene_Scene2.prototype = $extend(React_Component.prototype,{
	goBack: function() {
		this.props.navigator.pop({ animated : true, animationType : "fade"});
	}
	,goFirstScreen: function() {
		this.props.navigator.push({ screen : "First", title : "Pushed Screen"});
	}
	,render: function() {
		return React.createElement(react_native_component_View,{ style : scene_Scene2.styles.container},React.createElement(react_native_component_Text,{ style : scene_Scene2.styles.text},"This is Scene2"),React.createElement(react_native_component_Button,{ onPress : $bind(this,this.goBack), title : "Back"}),React.createElement(react_native_component_Button,{ onPress : $bind(this,this.goFirstScreen), title : "Goto First screen"}));
	}
});
var scene_Scene3 = function(props) {
	React_Component.call(this,props);
};
scene_Scene3.__super__ = React_Component;
scene_Scene3.prototype = $extend(React_Component.prototype,{
	componentDidMount: function() {
		this.props.navigator.setOnNavigatorEvent($bind(this,this.onNavigatorEvent));
	}
	,closeModale: function() {
		reactnative_navigation_Navigation.dismissModal({ animationType : "slide-down"});
	}
	,onNavigatorEvent: function(e) {
		console.log("Scene3 onNavigatorEvent : " + e.id);
		var _g = e.id;
		if(_g == "close-btn") {
			this.closeModale();
		}
	}
	,goBack: function() {
		this.props.navigator.pop({ animated : true, animationType : "fade"});
	}
	,render: function() {
		return React.createElement(react_native_component_View,{ style : scene_Scene3.styles.container},React.createElement(react_native_component_Text,{ style : scene_Scene3.styles.text},"This is Scene3"),React.createElement(react_native_component_Button,{ color : "#ffcc00", onPress : $bind(this,this.goBack), title : "Back"}));
	}
});
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var $$tre = (typeof Symbol === "function" && Symbol.for && Symbol.for("react.element")) || 0xeac7;
App.displayName = "App";
CustomButton.styles = react_native_api_StyleSheet.create({ button : { overflow : "hidden", width : 34, height : 34, borderRadius : 17., justifyContent : "center", alignItems : "center", backgroundColor : "green"}});
HomeScene.navigatorButtons = { leftButtons : [{ icon : require("./assets/menu.png"), title : "Menu", id : "menu", _testID : "e2e_rules", _disabled : true, _disableIconTint : true, _showAsAction : "ifRoom", buttonColor : "blue", buttonFontSize : 14, buttonFontWeight : "600"}]};
HomeScene.styles = react_native_api_StyleSheet.create({ container : { flex : 1, justifyContent : "center", alignItems : "center"}, text : { fontSize : 20, textAlign : "center", margin : 10}, item : { margin : 30, color : "red"}, itemText : { margin : 30, color : "green"}, button : { }});
HomeScene.displayName = "HomeScene";
Main.styles = react_native_api_StyleSheet.create({ container : { flex : 1, justifyContent : "center", alignItems : "center", backgroundColor : "#00FFCC"}, text : { fontSize : 20, textAlign : "center", margin : 10}, item : { margin : 30, color : "red"}, itemText : { margin : 30, color : "green"}});
scene_DrawerMenu.styles = react_native_api_StyleSheet.create({ view : { height : "50%", flexDirection : "column", alignItems : "stretch", justifyContent : "center"}, text : { height : 50, backgroundColor : "steelblue"}});
scene_DrawerMenu.displayName = "DrawerMenu";
scene_Popup.styles = react_native_api_StyleSheet.create({ view : { height : "50%", flexDirection : "column", alignItems : "stretch", justifyContent : "center"}, text : { height : 50, backgroundColor : "steelblue"}});
scene_Popup.displayName = "Popup";
scene_Row.styles = react_native_api_StyleSheet.create({ highlight : { color : "red"}, row : { height : 48, width : 1, paddingHorizontal : 16, flexDirection : "row", alignItems : "center", justifyContent : "center", borderBottomWidth : 1, borderBottomColor : "green"}, text : { fontSize : 16}});
scene_Row.displayName = "Row";
scene_Scene1.styles = Main.styles;
scene_Scene1.displayName = "Scene1";
scene_Scene2.styles = Main.styles;
scene_Scene2.displayName = "Scene2";
scene_Scene3.styles = Main.styles;
scene_Scene3.navigatorButtons = { leftButtons : [{ id : "null"}], rightButtons : [{ id : "close-btn", icon : require("./assets/icon-message/icon_message.png")}]};
scene_Scene3.displayName = "Scene3";
Main.main();
})();
