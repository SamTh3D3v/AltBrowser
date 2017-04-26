private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a initialize and reopen a window of the AltBrowserNeo to see the changes in the opened browsers."

	"AltBrowser initialize."

	^ #(
		#(#PharoBootstrap)
		#(#Core #Compiler #Reflectivity #Regex)
		#(#Development #PragmaCollector #SLICE)
		#(#Network)
		#(#External #FileSystem #System)
		#(#Packages #BaselineOf #CodeImport #ConfigurationOf #Gofer #Metacello #Monticello #RPackage #Ring #CodeExport #ConfigurationCommandLine))