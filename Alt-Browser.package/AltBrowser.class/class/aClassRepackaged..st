updating
aClassRepackaged: anEvent
	"Ok, a class was repackaged. Update old and new package."

	| newPackage oldPackage cat |
	newPackage := anEvent newPackage.
	oldPackage := anEvent oldPackage.
	self assert: anEvent classRepackaged package = newPackage.
	{oldPackage.
	newPackage}
		do: [ :p | 
			| r |
			self rootItems detect: [ :e | (r := e findPackage: p) notNil ] ifNone: [ r := nil ].
			r notNil
				ifTrue: [ self aNodeToRebuilt: r ] ]