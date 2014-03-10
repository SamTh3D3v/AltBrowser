resources
setUp
	PackageOrganizer default registerPackageNamed: 'AltTestingUnderway'.
	MCWorkingCopy forPackage: (MCPackage new name: 'AltTestingUnderway').
	Object
		subclass: #AltTestingClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'AltTestingUnderway'.
	browser := AltBrowser open