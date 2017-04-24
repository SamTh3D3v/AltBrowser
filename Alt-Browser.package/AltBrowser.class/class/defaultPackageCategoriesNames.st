private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a initialize and reopen a window of the AltBrowserNeo to see the changes in the opened browsers."

	"AltBrowser initialize."

	^ #(
		#(#PharoBootstrap)
		#(#Core #Announcements #Collections #Compiler #Kernel #Multilingual #Opal #Reflectivity #Regex #Slot #Traits #Transcript #Random #UI #Colors)
		#(#Development #AST #NonInteractiveTranscript #PragmaCollector #SLICE #ScriptingExtensions)
		#(#Networking #Compression #Network)
		#(#External #FileSystem #Files #Jobs #System)
		#(#Packages #BaselineOf #CodeImport #ConfigurationOf #Gofer #Metacello #Monticello #RPackage #Ring #CodeExport #ConfigurationCommandLine))