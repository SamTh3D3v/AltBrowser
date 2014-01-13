tests API
testRPackageTagAccess
	"RPackageTag>>name and RPackageTag>>categoryName"

	| package |
	package := RPackage organizer packageOf: self class.
	self assert: (package classTagForClass: self class) name = #Tests