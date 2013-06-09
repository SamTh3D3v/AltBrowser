updating
aMethodUpdated: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update it."

	| sItem |
	self selectedNode isNil
		ifTrue: [ ^ self ].
	sItem := self selectedNode item.
	self assert: (sItem isKindOf: AltAbstractNode).
	(sItem isKindOf: AltMethodNode)
		ifFalse: [ ^ self ].
	(sItem sourceClass == anEvent methodClass and: [ sItem item == anEvent oldMethod selector ])
		ifTrue: [ source contents: self selectedNode sourceCode ]