resources
setUp
	RPackageOrganizer default registerPackageNamed: 'TestingUnderway'.
	MCWorkingCopy forPackage: (MCPackage new name: 'TestingUnderway').
	Object
		subclass: #AltTestingClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TestingUnderway'.
	browser := AltBrowserNeo open