querying
sourceCode
	"Was description before, but this was lost in the PackageInfo to RPackage transition."

	^ 'Package : ' , self item name
		,
			'
	' , self item definedClasses size printString
		,
			' defined classes,
	' , self item selectors size printString , ' methods'