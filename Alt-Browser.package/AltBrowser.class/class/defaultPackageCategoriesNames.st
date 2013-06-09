private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a reset of the AltBrowser to see the changes in the opened browsers."
	
	"AltBrowser reset."
	
	^ #('System'
		#('GUI' 'Graphics' 'Morphic' 'Balloon' 'FreeType' 'Polymorph' 'Spec' 'UIManager' 'UI' 'GroupManagerUI' 'Growl' 'Keymapping')
		#('Core' 'Kernel' 'Collections' 'Text' 'Compiler' 'Text' 'EmergencyEvaluator' 'Regex' 'Multilingual' 'Announcements' 'Transcript')
		#('Development' 'AST' 'Refactoring' 'Tools' 'Nautilus' 'NonInteractiveTranscript' 'SUnit' 'Tests' 'Shout' 'SmaCC' 'NECompletion' 'NOCompletion')
		#('Networking' 'Network' 'Zodiac' 'Zink')
		#('Packages' 'PackageInfo' 'Fuel' 'Monticello' 'CodeImport' 'Gofer' 'Configuration' 'Rpackage' 'Ring' 'CI' 'GroupManager')
		#('2.0' 'Compatibility' 'Deprecated' 'RecentSubmissions' 'FixUnderscores' 'ScriptLoader20')
		'Compression'
	)