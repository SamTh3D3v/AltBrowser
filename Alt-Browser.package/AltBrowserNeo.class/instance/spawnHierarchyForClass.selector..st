user interface
spawnHierarchyForClass: aClass selector: aSelectorOrNil
	"Handle hierarchy browsing on a class and a selector or nil. Why, on earth are we reaching that at the instance level? Discard the current instance we are in when receiving that message, anyway, initialisation is only done when reaching open."

	^ self class fullHierarchyOnClass: aClass selector: aSelectorOrNil