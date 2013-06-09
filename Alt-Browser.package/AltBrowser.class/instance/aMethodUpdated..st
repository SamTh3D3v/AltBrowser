updating
aMethodUpdated: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update it."

	| sItem |
	sItem := self selectedItem item.
	self assert: (sItem isKindOf: ABAbstractNode).
	(sItem isKindOf: ABMethodNode)
		ifFalse: [ ^ self ].
	(sItem sourceClass == anEvent methodClass and: [ sItem item == anEvent oldMethod selector ])
		ifTrue: [ textModel text: self selectedItem sourceCode ]