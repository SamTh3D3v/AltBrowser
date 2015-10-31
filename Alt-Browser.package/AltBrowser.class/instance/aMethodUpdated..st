updating
aMethodUpdated: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update it."

	| sItem |
	self selectedItem isNil
		ifTrue: [ ^ self ].
	sItem := self selectedItem.
	sItem isMethodNode
		ifFalse: [ ^ self ].
	(sItem sourceClass == anEvent methodClass and: [ sItem selector == anEvent oldMethod selector ])
		ifTrue: [ source contents: self selectedItem sourceCode ]