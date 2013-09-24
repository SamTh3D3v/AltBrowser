updating
aClassRenamed: anEvent
	"Note: Just say if we match. This will work even if we are an extension. But what happens if we are an extension on the class side?"

	^ anEvent classRenamed == item or: [ item isMeta and: [ anEvent classRenamed class == item ] ]