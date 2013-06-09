updating
aClassAdded: anEvent
	"Ok, a class was added. Find the package it belongs to (or none)."

	| node r package cat |
	package := RPackageOrganizer default globalPackageOf: anEvent classAdded.
	self assert: package notNil.
	node := self rootItems contents detect: [ :e | (r := e findPackage: package) notNil ] ifNone: [ ^ self ].
	self rootItems contents detect: [ :e | (cat := e findClassCategory: anEvent classCategory) notNil ] ifNone: [ nil ].
	cat notNil
		ifTrue: [ 
			| classNode |
			cat contentsNotNil
				ifTrue: [ 
					classNode := cat addChild: anEvent classAdded.
					announcer announce: (AltNodeAdded node: classNode) ] ]
		ifFalse: [ 
			r contentsNotNil
				ifTrue: [ 
					| classNode |
					classNode := r addChild: anEvent classAdded.
					announcer announce: (AltNodeAdded node: classNode) ] ]