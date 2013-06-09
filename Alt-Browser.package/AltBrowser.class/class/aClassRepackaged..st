updating
aClassRepackaged: anEvent
	"Ok, a class was repackaged. Update old and new package."

	| node r newPackage oldPackage cat |
	newPackage := anEvent newPackage.
	oldPackage := anEvent oldPackage.
	self assert: anEvent classRepackaged package = newPackage.
	node := self rootItems detect: [ :e | (r := e findPackage: oldPackage) notNil ] ifNone: [ r := nil ].
	(r notNil and: [ r contentsNotNil ])
		ifTrue: [ 
			| classNode |
			classNode := r removeChild: anEvent classRepackaged.
			announcer announce: (AltNodeRemoved node: classNode) ].
	node := self rootItems detect: [ :e | (r := e findPackage: newPackage) notNil ] ifNone: [ r := nil ].
	(r notNil and: [ r contentsNotNil ])
		ifTrue: [ 
			| classNode |
			classNode := r addChild: anEvent classRepackaged.
			announcer announce: (AltNodeAdded node: classNode) ]