# flutter

## Note:
  * Adding new package:
    1. go to pub.dev page (https://pub.dev)
    2. add package into pubspec.yaml under dependencies   
    3. run $flutter pub get (if flutter doesn't execute automatically)
    4. import package in targeted file
  * Dart Syntax:
    1. Adding a leading underscore to a variable name to inform dart that the variable is a private property
  * Open Dart DevTool ( a live insight of widget tree)
    1. Debug -> Start Debugging (simulator must run on debug mode)
		2. Open a new terminal then run:
			  * $flutter pub global activate devtools
			  * $flutter pub global run devtools   # If you have `flutter` on your path.
		3. Open another new terminal
			  * $flutter run (Taking note on the running url)
		4. Open http://localhost:9100/
        * paste the running url 
  * Most important widgets: 
    1. App / Page Setup:
        * MaterialApp / CupertinoApp: 
        * Scaffold / CupertinoPageScaffold
    2. Layout:
        * Container
        * Row / Column
    3. Row / Column Children:
        * Flexible
        * Expanded
    4. Content Containers
        * Stack
        * Card
    5. Repeat Elements:
        * ListView

        ||  ListView(children:[]) |  ListView.builder()  |
        |---|---|---|
        ||   load all contents   |  only load what's visible |
        |usage| short list and konwn lists | long lists and unkonwn lists|


        * GridView
        * ListTile
    6. Content Types:
        * Text
        * Image
        * Icon
    7. User Input
        * TextField
        * RasedButton / FlatButton
        * GestureDetector
        * InkWell
## Commands: 
  * Create a flutter project: $flutter create <project name>
  * Get flutter dependencies: $flutter packages get
  * Run a flutter project:
    1. Open ISO simulator: $open -a Simulator
    2. Run a flutter project: $flutter run

## Shortcuts: (VS Code) (Mac)
  * Command + Shift + p: open cammand panel
  * Command + option (On Wedgets): showing a Wedget’s info
  * Command + . (On Wedgets): showing a Wedget’s options
	* Option + Shift + f: auto formating
	* Command + /: add a comment 
	* Option + Shift + o: removing unused imports
	* Control + Command + Space (Inside a targeted wedget)： opening avaliable elements

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