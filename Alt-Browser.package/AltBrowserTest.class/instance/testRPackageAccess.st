tests API
testRPackageAccess
	self assert: (RPackage organizer packageOf: self class) packageName = 'Alt-Browser'