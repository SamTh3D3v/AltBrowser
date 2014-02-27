updating
aMethodUpdated: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update it."

	| sItem |
	self selectedNode isNil
		ifTrue: [ ^ self ].
	sItem := self selectedNode item.
	sItem isMethodNode
		ifFalse: [ ^ self ].
	(sItem sourceClass == anEvent methodClass and: [ sItem selector == anEvent oldMethod selector ])
		ifTrue: [ source contents: self selectedNode sourceCode ]