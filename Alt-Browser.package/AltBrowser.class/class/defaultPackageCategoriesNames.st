private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a reset of the AltBrowser to see the changes in the opened browsers."

	"AltBrowser reset."

	^ #(
		#('System' 'System' 'FileSystem' 'Files' 'CommandShell' 'StartupPreferences' 'OSProcess')
		#('GUI' 'Graphics' 'Morphic' 'Balloon' 'FreeType' 'Polymorph' 'Spec' 'UIManager' 'UI' 'GroupManagerUI' 'Growl' 'Keymapping' 'EventModel' 'MenuRegistration' 'NewList' 'Settings' 'HelpSystem' 'KeyChain' 'Keys' 'SmartSuggestions' 'Athens' 'Tabs' 'History' 'Roassal' 'NewValueHolder')
		#('Core' 'Kernel' 'Collections' 'Text' 'Compiler' 'EmergencyEvaluator' 'Regex' 'Multilingual' 'Announcements' 'Transcript' 'Traits' 'Unicode-Initialization' 'Slot' 'OpalCompiler' 'ClassOrganizer')
		#('Development' 'AST' 'NodeNavigation' 'Refactoring' 'Tools' 'Nautilus' 'NonInteractiveTranscript' 'SUnit' 'Tests' 'Shout' 'SmaCC' 'NECompletion' 'NOCompletion' 'Manifest' 'NativeBoost' 'AsmJit' 'SLICE' 'Debugger' 'ProfStef' 'Generated')
		#('Networking' 'Network' 'Zodiac' 'Zinc' 'Compression')
		#('Packages' 'Baseline' 'Configuration' 'PackageInfo' 'Fuel' 'Monticello' 'Metacello' 'CodeImport' 'Gofer' 'RPackage' 'Ring' 'CI' 'GroupManager' 'UpdateStreamer' 'Komitter' 'Versionner' )
		#('3.0' 'Compatibility' 'Deprecated' 'RecentSubmissions' 'ScriptLoader' 'HudsonBuildTools' 'ReleaseTests'))