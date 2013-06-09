private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a reset of the AltBrowser to see the changes in the opened browsers."

	"AltBrowser reset."

	^ #('System'
		#('GUI' 'Graphics' 'Morphic' 'Balloon' 'FreeType' 'Polymorph' 'Spec' 'UIManager' 'UI' 'GroupManagerUI' 'Growl' 'Keymapping' 'FamFam' 'EventModel' 'MenuRegistration' 'HistoryCollection' 'NewList')
		#('Core' 'Kernel' 'Collections' 'Text' 'Compiler' 'EmergencyEvaluator' 'Regex' 'Multilingual' 'Announcements' 'Transcript' 'Traits' 'NewClassOrganizer')
		#('Development' 'AST' 'Refactoring' 'Tools' 'Nautilus' 'NonInteractiveTranscript' 'SUnit' 'Tests' 'Shout' 'SmaCC' 'NECompletion' 'NOCompletion' 'Manifest' 'NativeBoost' 'AsmJit')
		#('Networking' 'Network' 'Zodiac' 'Zinc' 'Compression')
		#('Packages' 'PackageInfo' 'Fuel' 'Monticello' 'Metacello' 'CodeImport' 'Gofer' 'Configuration' 'RPackage' 'Ring' 'CI' 'GroupManager')
		#('2.0' 'Compatibility' 'Deprecated' 'RecentSubmissions' 'FixUnderscores' 'ScriptLoader20' 'HudsonBuildTools20')
	)