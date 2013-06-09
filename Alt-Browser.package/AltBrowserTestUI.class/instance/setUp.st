resources
setUp
	PackageInfo registerPackageName: 'Alt-Testing-Underway'.
	MCWorkingCopy forPackage: (MCPackage new name: 'Alt-Testing-Underway').
	Object
		subclass: #AltTestingClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Alt-Testing-Underway'.
	browser := AltBrowser open