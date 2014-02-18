instance creation
fullHierarchyOnClass: aClass in: aRBEnvironment
	"Open in hierarchy mode on a class."

	^ self fullHierarchyOnClass: aClass selector: nil in: aRBEnvironment