private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a initialize and reopen a window of the AltBrowser to see the changes in the opened browsers."

	"AltBrowser initialize."

	^ #(
		#(#'Operating System' #System #FileSystem #Files #CommandShell #StartupPreferences #OSProcess #ProcessWrapper #Neo #OSWindow #XML #Jobs)
		#(#GUI #Graphics #Morphic #Balloon #FreeType #Polymorph #Spec #UI #GroupManagerUI #Growl #Keymapping #MenuRegistration #Settings #HelpSystem #SmartSuggestions #Athens #NewValueHolder #EmbeddedFreeType #FontInfrastructure #GT #Glamour #UserManager #Chroma #'Pharo-Help' #TxText #Rubric #FontChooser)
		#(#Core #Kernel #Collections #Text #Compiler #EmergencyEvaluator #Regex #Multilingual #Announcements #Transcript #Traits #Unicode #Slot #Opal #Reflectivity)
		#(#Development #AST #NodeNavigation #Refactoring #Nautilus #NonInteractiveTranscript #SUnit #Tests #Shout #NECompletion #Manifest #NativeBoost #AsmJit #SLICE #Debugger #ProfStef #Generated #ShoreLine #Tool #MessageBrowserRefactoringAddition #PragmaCollector)
		#(#Networking #Network #Zodiac #Zinc #Compression)
		#(#Packages #Baseline #Configuration #Fuel #Monticello #Metacello #CodeImport #Gofer #RPackage #Ring #GroupManager #UpdateStreamer #Komitter #Versionner)
		#(#'4.0' #Deprecated #RecentSubmissions #ScriptLoader #HudsonBuildTools #ReleaseTests)
	)