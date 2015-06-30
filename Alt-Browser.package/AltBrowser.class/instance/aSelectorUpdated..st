updating
aSelectorUpdated: anEvent
	"Update all nodes with the same name as this event."

	^ self treeMorph allNodeMorphs
		do: [ :aNodeMorph | 
			aNodeMorph complexContents
				ifNotNil: [ :cC | 
					cC asString = anEvent selector
						ifTrue: [ 
							aNodeMorph submorphs do: [ :e | e delete ].
							aNodeMorph initRow ] ] ]