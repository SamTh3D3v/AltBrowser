instance creation
fullHierarchyOnClass: aClass
	"Open in hierarchy mode on a class."

	^ self fullHierarchyOnClass: aClass in: RBClassEnvironment  default