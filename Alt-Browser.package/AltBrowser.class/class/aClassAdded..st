updating
aClassAdded: anEvent
	"Ok, a class was added. Find the package it belongs to (or none)."

	| node r package cat |
	package := anEvent classAdded package.
	self assert: package notNil.
	node := self roots detect: [ :e | (r := e findPackage: package) notNil ] ifNone: [ ^ self ].
	r contentsNotNil
				ifTrue: [ 
					| classNode |
					classNode := r addChild: anEvent classAdded.
					announcer announce: (AltNodeAdded node: classNode) ]