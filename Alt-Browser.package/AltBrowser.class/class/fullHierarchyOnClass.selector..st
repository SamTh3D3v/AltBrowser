instance creation
fullHierarchyOnClass: aClass selector: aSelector
	"Open in hierarchy mode on a class."

	^ self fullHierarchyOnClass: aClass selector: aSelector in: RBClassEnvironment default