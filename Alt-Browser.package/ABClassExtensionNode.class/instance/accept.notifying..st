actions
accept: aText notifying: aController
	"Compile the method. Return a target methodNode object for the method. We know it should be one of our children."

	| aSelector aMethodNode |
	aSelector := self sourceClass compile: aText classified: self methodCategory notifying: aController.	"New node should have been added in there."
	self rebuildContents.
	aMethodNode := self parentNode findMethod: aSelector in: self sourceClass.
	^ aMethodNode