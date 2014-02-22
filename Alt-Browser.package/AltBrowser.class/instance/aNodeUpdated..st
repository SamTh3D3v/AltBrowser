updating
aNodeUpdated: anEvent
	"Don't forget to update the title if appropriate."

	| r sItem |
	self selectedNode
		ifNotNil: [ :sNode | 
			sItem := sNode item.
			anEvent node == sItem
				ifTrue: [ self updateTitle ] ].
	r := self findMorphNodeForAbstractItem: anEvent node.
	r notNil
		ifFalse: [ ^ self ].
	r submorphs do: [ :e | e delete ].
	r initRow