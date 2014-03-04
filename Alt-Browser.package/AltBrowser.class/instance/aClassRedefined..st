updating
aClassRedefined: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update it."

	| sItem |
	self selectedNode isNil
		ifTrue: [ ^ self ].
	sItem := self selectedNode item.
	sItem isClassNode
		ifFalse: [ ^ self ].
	sItem itemClass name = anEvent newClassDefinition name
		ifTrue: [ source contents: anEvent newClassDefinition definition ]