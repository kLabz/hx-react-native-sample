package reactnative.navigation;

typedef NavigatorStyle = {
	// Common
	? navBarTextColor : String, // '#000000', // change the text color of the title (remembered across pushes)
	? navBarTextFontSize : Int, // change the font size of the title
	? navBarTextFontFamily : String, // 'font-name', // Changes the title font
	? navBarBackgroundColor : String, // '#f7f7f7', // change the background color of the nav bar (remembered across pushes)
	? navBarCustomView : String, // 'example.CustomTopBar', // registered component name
	? navBarComponentAlignment : String, // 'center', // center/fill
	? navBarCustomViewInitialProps: {}, // navBar custom component props
	? navBarButtonColor : String, // '#007aff', // Change color of nav bar buttons (eg. the back button) (remembered across pushes)
	? topBarElevationShadowEnabled : Bool, // (Android - default: true, iOS - default: false). Disables TopBar elevation shadow on Lolipop and above
	? navBarHidden : Bool, // make the nav bar hidden
	? navBarHideOnScroll : Bool, // make the nav bar hidden only after the user starts to scroll
	? navBarTranslucent : Bool, // make the nav bar semi-translucent, works best with drawUnderNavBar:true
	? navBarTransparent : Bool, // make the nav bar transparent, works best with drawUnderNavBar:true,
	? navBarNoBorder : Bool, // hide the navigation bar bottom border (hair line). Default false
	? drawUnderNavBar : Bool, // draw the screen content under the nav bar, works best with navBarTranslucent:true
	? drawUnderTabBar : Bool, // draw the screen content under the tab bar (the tab bar is always translucent)
	? navBarBlur : Bool, // blur the entire nav bar, works best with drawUnderNavBar:true
	? tabBarHidden : Bool, // make the screen content hide the tab bar (remembered across pushes)
	? statusBarHidden : Bool, // make the status bar hidden regardless of nav bar state
	? statusBarTextColorScheme : String, // 'dark', // text color of status bar, 'dark' / 'light' (remembered across pushes)
	? navBarSubtitleColor : String, // 'red', // subtitle color
	? navBarSubtitleFontFamily : String, // 'font-name', // subtitle font, 'sans-serif-thin' for example
	? navBarSubtitleFontSize : Int, // subtitle font size
	? screenBackgroundColor : String, // 'white', // Default screen color, visible before the actual react view is rendered
	? orientation : String, // 'portrait' // Sets a specific orientation to a modal and all screens pushed to it. Default: 'auto'. Supported values: 'auto', 'landscape', 'portrait'
	? disabledButtonColor : String, // '#ff0000' // chnaged the navigation bar button text color when disabled.

	// iOS only
	? statusBarTextColorSchemeSingleScreen : String, // 'light', // same as statusBarTextColorScheme but does NOT remember across pushes
	? statusBarHideWithNavBar : Bool, // hide the status bar if the nav bar is also hidden, useful for navBarHidden:true
	? statusBarBlur : Bool, // blur the area under the status bar, works best with navBarHidden:true

	? disabledBackGesture : Bool, // default: false. Disable the back gesture (swipe gesture) in order to pop the top screen. 
	? disabledSimultaneousGesture : Bool, // default: true. Disable simultaneous gesture recognition.
	? screenBackgroundImageName : String, // '<name of image in Images.xcassets>', // Optional. default screen background image.
	? rootBackgroundImageName : String, // '<name of image in Images.xcassets>', // Static while you transition between screens. Works best with screenBackgroundColor: 'transparent'

	? navBarButtonFontSize : Int, // Change font size nav bar buttons (eg. the back button) (remembered across pushes)
	? navBarButtonFontWeight : String, // '500', // Change font weight nav bar buttons (eg. the back button) (remembered across pushes)

	? navBarLeftButtonFontSize : Int, // Change font size of left nav bar button
	? navBarLeftButtonColor : String, // 'red', // Change color of left nav bar button
	? navBarLeftButtonFontWeight : String, // '400', // Change font weight of left nav bar button

	? navBarRightButtonFontSize : Int, // Change font size of right nav bar button
	? navBarRightButtonColor : String, // 'blue', // Change color of right nav bar button
	? navBarRightButtonFontWeight : String, // '600', // Change font weight of right nav bar button

	? topBarShadowColor : String, // 'blue' // Sets shadow of the navbar, Works only when topBarElevationShadowEnabled: true
	? topBarShadowOpacity : Float, // Sets shadow opacity on the navbar, Works only when topBarElevationShadowEnabled: true
	? topBarShadowOffset : Int, // Sets shadow offset on the navbar, Works only when topBarElevationShadowEnabled: true
	? topBarShadowRadius : Int, // Sets shadow radius on the navbar, Works only when topBarElevationShadowEnabled: true

	? preferredContentSize : { width : Int, height : Int }, // Sets the preferred size for the view controller’s view.
	? modalPresentationStyle : String, // 'formSheet' // Sets the presentation style for modally presented view controllers. Supported styles are: 'formSheet', 'pageSheet', 'overFullScreen', 'overCurrentContext' and 'fullScreen'. 

	? largeTitle : Bool, // Sets the nav bar title to be in the larger iOS 11 style

	// Android only
	? navigationBarColor : String, // ex: '#000000', change the background color of the bottom native navigation bar.
	? navBarTitleTextCentered : Bool, // default: false. centers the title.
	? navBarSubTitleTextCentered : Bool, // (Android - default: false, iOS - default: depending on navBarTitleTextCentered). centers the subTitle.
	? navBarButtonFontFamily : String, // ex: 'sans-serif-thin', // Change the font family of textual buttons
	? statusBarColor : String, // ex: '#000000', // change the color of the status bar.
	? drawUnderStatusBar : Bool, // default: false, will draw the screen underneath the statusbar. Useful togheter with statusBarColor: transparent
	? collapsingToolBarImage : String, // ex: "http://lorempixel.com/400/200/", Collapsing Toolbar image. Either use a url or require a local image.
	? collapsingToolBarCollapsedColor : String, // ex: '#0f2362', // Collapsing Toolbar scrim color.
	? navBarTextFontBold : Bool, // Optional. Set the title to bold.
	? navBarHeight : Int, // Optional, set the navBar height in pixels.
	? navBarTopPadding : Int, // Optional, set navBar top padding in dp. Useful when StatusBar.translucent=true on Android Lollipop and above.
	? topTabsHeight : Int, // Optional, set topTabs height in pixels.
	? topBarBorderColor : String, // ex: 'red', // Optional, set a flat border under the TopBar.
	? topBarBorderWidth : Float, // Optional, set the width of the border.
}
