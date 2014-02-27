actions
accept: aText notifying: aController
	"Compile the method. Return a target methodNode object for the method. We know it should be one of our children."

	| aSelector aMethodNode |
	self methodCategory = 'no messages'
		ifTrue: [ 
			aSelector := self sourceClass compile: aText.
			self parent rebuildContents ]
		ifFalse: [ 
			aSelector := self sourceClass compile: aText classified: self methodCategory notifying: aController.
			self rebuildContents ].
	aMethodNode := self parent findMethod: aSelector in: self sourceClass.
	^ aMethodNode