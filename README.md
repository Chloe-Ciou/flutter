# flutter

## Note:
  * Dart Syntax:
    1. Adding a leading underscore to a variable name to inform dart that the variable is a private property
  * important widgets: 
    1. Scaffold: creating basic design style

## Commands: 
  * Create a flutter project: $flutter create <project name>
  * Get flutter dependencies: $flutter packages get
  * Run a flutter project:
    1. Open ISO simulator: $open -a Simulator
    2. Run a flutter project: $flutter run

## Shortcuts: (VS Code) (Mac)
  * Command + option (On Wedgets): showing a Wedget’s info
  * Command + . (On Wedgets): showing a Wedget’s options
	* Option + Shift + f: auto formating
	* Command + /: add a comment 
	* Option + Shift + o: removing unused imports
	* Control + Command + Space：
	* Shift + Command + P: open Dart DevTool (simulator must be running on debug mode)
		1. Open first terminal run: show all available  arguments
			   * $flutter pub global activate devtools
			   * $flutter pub global run devtools   # If you have `flutter` on your path.
		2. Second terminal 
			   * $flutter run (Take note on http://127.0.0.1:50976/Swm0bjIe0ks=/ url)
		3. Open http://localhost:9100/ 
         * paste  http://127.0.0.1:50976/Swm0bjIe0ks=/ 

## Developing Settings:
  * Run flutter project on IOS simulator in the second time:
	  1. $flutter clean: on flutter project’s terminal
    2. Xcode's main bar -> Project -> clean build folder
	  3. $flutter build bundle
 
## Useful Resources & Links:
  * Official Flutter Docs: https://flutter.io/docs/
  * macOS Setup Guide: https://flutter.io/setup-macos
  * Windows Setup Guide: https://flutter.io/setup-windows
  * Visual Studio Code Flutter Extension: https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter