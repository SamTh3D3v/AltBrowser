tests API
testRPackageTagName
	"RPackageTag>>name and RPackageTag>>categoryName"

	| packageTag |
	packageTag := (RPackage organizer packageOf: self class) classTagForClass: self class.
	self assert: packageTag name = #Tests.
	self assert: packageTag categoryName = #'Alt-Browser-Tests'.
	self assert: packageTag packageName = #'Alt-Browser'