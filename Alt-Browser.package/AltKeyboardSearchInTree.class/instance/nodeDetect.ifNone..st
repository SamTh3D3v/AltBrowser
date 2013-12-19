private
nodeDetect: aBlock ifNone: aNoneBlock
	"The base search technique for matching nodes. Take the node list, start the search one morph after the selection, loop to beginning if needed."

	| searchList |
	searchList := baseIndex
		ifNil: [ 
			requestor selectedMorph
				ifNil: [ requestor allNodeMorphs ]
				ifNotNil: [ :sel | (requestor allNodeMorphs allButFirst: sel index) , (requestor allNodeMorphs first: sel index) ] ]
		ifNotNil: [ :i | (requestor allNodeMorphs allButFirst: i - 1) , (requestor allNodeMorphs first: i - 1) ].
	^ searchList detect: aBlock ifNone: aNoneBlock