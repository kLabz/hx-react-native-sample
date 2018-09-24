// Generated by Haxe 3.4.7
(function ($hx_exports) { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var React_Component = require("react").Component;
var react_native_api_StyleSheet = require("react-native").StyleSheet;
var HomeScene = function(props) {
	React_Component.call(this,props);
	this.state = { };
	this.items = [{ label : "one", value : "First"},{ label : "two", value : "Second"},{ label : "three", value : "Third"}];
};
HomeScene.__super__ = React_Component;
HomeScene.prototype = $extend(React_Component.prototype,{
	onPressed: function(item,index) {
		console.log("Navigating to " + item.value);
		this.props.navigation.navigate(item.value);
	}
	,renderList: function() {
		var styles = HomeScene.styles;
		var _g = [];
		var _g2 = 0;
		var _g1 = this.items.length;
		while(_g2 < _g1) {
			var i = _g2++;
			_g.push(React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Button),{ key : i, title : this.items[i].label, onPress : (function(a2,a1,f) {
				return function() {
					f[0](a1[0],a2[0]);
				};
			})([i],[this.items[i]],[$bind(this,this.onPressed)])}));
		}
		return _g;
	}
	,render: function() {
		return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_View),{ style : HomeScene.styles.container},React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Text),{ style : HomeScene.styles.text},"The navigation menu"),this.renderList());
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
var JsxStaticInit_$_$ = function() { };
var Main = function() { };
Main.main = function() {
};
var App = $hx_exports["HxApp"] = function(props) {
	React_Component.call(this,props);
	this.state = { };
	this.MainStack = react__$ReactNode_ReactNode_$Impl_$.fromComp(react_navigation_StackNavigator({ Home : HomeScene, First : scene_Scene1, Second : scene_Scene2, Third : scene_Scene3},{ initialRouteName : "Home"}));
};
App.__super__ = React_Component;
App.prototype = $extend(React_Component.prototype,{
	render: function() {
		return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_View),{ style : App.styles.container},{ "$$typeof" : $$tre, type : this.MainStack, props : { }, key : null, ref : null});
	}
});
var enums_Enums = function() { };
var react_Partial = function() { };
var react_PartialMacro = function() { };
var React = require("react");
var react_ReactMacro = function() { };
var react__$ReactNode_ReactNode_$Impl_$ = {};
react__$ReactNode_ReactNode_$Impl_$.fromString = function(s) {
	return s;
};
react__$ReactNode_ReactNode_$Impl_$.fromFunction = function(f) {
	return f;
};
react__$ReactNode_ReactNode_$Impl_$.fromFunctionWithProps = function(f) {
	return f;
};
react__$ReactNode_ReactNode_$Impl_$.fromComp = function(cls) {
	if(cls.__jsxStatic != null) {
		return cls.__jsxStatic;
	}
	return cls;
};
var react__$ReactNode_ReactNodeOf_$Impl_$ = {};
react__$ReactNode_ReactNodeOf_$Impl_$.fromFunctionWithProps = function(f) {
	return react__$ReactNode_ReactNode_$Impl_$.fromFunctionWithProps(f);
};
react__$ReactNode_ReactNodeOf_$Impl_$.fromComp = function(cls) {
	return react__$ReactNode_ReactNode_$Impl_$.fromComp(cls);
};
react__$ReactNode_ReactNodeOf_$Impl_$.fromFunctionWithoutProps = function(f) {
	return react__$ReactNode_ReactNode_$Impl_$.fromFunction(f);
};
react__$ReactNode_ReactNodeOf_$Impl_$.fromCompWithoutProps = function(cls) {
	return react__$ReactNode_ReactNode_$Impl_$.fromComp(cls);
};
var react__$ReactRef_ReactRef_$Impl_$ = {};
react__$ReactRef_ReactRef_$Impl_$.get_current = function(this1) {
	return this1.current;
};
var react_native_component_Button = require("react-native").Button;
var react_native_component_FlatList = require("react-native").FlatList;
var react_native_component_Text = require("react-native").Text;
var react_native_component_View = require("react-native").View;
var react_navigation_StackNavigator = require("react-navigation").createStackNavigator;
var scene_Scene1 = function(props,context) {
	React_Component.call(this,props,context);
};
scene_Scene1.__super__ = React_Component;
scene_Scene1.prototype = $extend(React_Component.prototype,{
	render: function() {
		var _gthis = this;
		var renderItem = function(data) {
			return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Text),{ },data.item.key);
		};
		var keyExtractor = function(item,index) {
			return item.id + "";
		};
		var id = 0;
		var _g = [];
		var _g1 = 0;
		while(_g1 < 100) {
			var i = _g1++;
			_g.push("Toto_" + i);
		}
		var data1 = _g.map(function(o) {
			id += 1;
			return { id : id - 1, key : o};
		});
		return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_View),{ style : scene_Scene1.styles.container},React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Text),{ style : scene_Scene1.styles.text},"This is Scene1"),React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Button),{ title : "Back", onPress : function() {
			_gthis.props.navigation.goBack();
		}}),React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_FlatList),{ data : data1, renderItem : renderItem, keyExtractor : keyExtractor}));
	}
});
var scene_Scene2 = function(props,context) {
	React_Component.call(this,props,context);
};
scene_Scene2.__super__ = React_Component;
scene_Scene2.prototype = $extend(React_Component.prototype,{
	render: function() {
		var _gthis = this;
		return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_View),{ style : scene_Scene2.styles.container},React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Text),{ style : scene_Scene2.styles.text},"This is Scene2"),React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Button),{ title : "Back", onPress : function() {
			_gthis.props.navigation.goBack();
		}}));
	}
});
var scene_Scene3 = function(props,context) {
	React_Component.call(this,props,context);
};
scene_Scene3.__super__ = React_Component;
scene_Scene3.prototype = $extend(React_Component.prototype,{
	render: function() {
		var _gthis = this;
		return React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_View),{ style : scene_Scene3.styles.container},React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Text),{ style : scene_Scene3.styles.text},"This is Scene3"),React.createElement(react__$ReactNode_ReactNode_$Impl_$.fromComp(react_native_component_Button),{ title : "Back", onPress : function() {
			_gthis.props.navigation.goBack();
		}}));
	}
});
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
var $$tre = (typeof Symbol === "function" && Symbol.for && Symbol.for("react.element")) || 0xeac7;
HomeScene.styles = react_native_api_StyleSheet.create({ container : { flex : 1, justifyContent : "center", alignItems : "center", backgroundColor : "#00FFCC"}, text : { fontSize : 20, textAlign : "center", margin : 10}, item : { margin : 30, color : "red"}, itemText : { margin : 30, color : "green"}, button : { color : "blue"}});
Main.styles = react_native_api_StyleSheet.create({ container : { flex : 1, justifyContent : "center", alignItems : "center", backgroundColor : "#00FFCC"}, text : { fontSize : 20, textAlign : "center", margin : 10}, item : { margin : 30, color : "red"}, itemText : { margin : 30, color : "green"}});
App.styles = react_native_api_StyleSheet.create({ container : { flex : 1, justifyContent : "center", alignItems : "stretch", backgroundColor : "#00FF00"}});
scene_Scene1.styles = Main.styles;
scene_Scene2.styles = Main.styles;
scene_Scene3.styles = Main.styles;
Main.main();
})(typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this);