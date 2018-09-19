package reactnative.navigation;

extern class Navigator {
	public function push(v : Dynamic) : Void;
	public function pop(? v : Dynamic) : Void;
	public function popToRoot(v : Dynamic) : Void;
	public function resetTo(v : Dynamic) : Void;
	public function showModal(v : Dynamic) : Void;
	public function dismissModal(v : Dynamic) : Void;
	public function dismissAllModals(v : Dynamic) : Void;
	public function showLightBox(v : Dynamic) : Void;
	public function dismissLightBox(v : Dynamic) : Void;
	public function showInAppNotification(v : Dynamic) : Void;
	public function handleDeepLink(v : Dynamic) : Void;
	public function setButtons(v : Dynamic) : Void;
	public function setTitle(v : Dynamic) : Void;
	public function setSubTitle(v : Dynamic) : Void;
	public function toggleDrawer(v : Dynamic) : Void;
	public function setDrawerEnabled(v : Dynamic) : Void;
	public function toggleTabs(v : Dynamic) : Void;
	public function setTabBadge(v : Dynamic) : Void;
	public function setTabButton(v : Dynamic) : Void;
	public function switchToTab(v : Dynamic) : Void;
	public function toggleNavBar(v : Dynamic) : Void;
	public function setOnNavigatorEvent(v : Dynamic) : Void;
	public function addOnNavigatorEvent(cb : Void -> Void) : Void;
	public function screenIsCurrentlyVisible() : Bool;
}
