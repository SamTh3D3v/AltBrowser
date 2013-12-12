user actions
onKey: anEvt for: aMorph
	"On each key, track and select."

	"Improve: start one after the current selection and loop over the list of nodes in the tree. It allows for a multi-level search without having to track the selected path (parent node is selected, search starts among the childrens). Ok, should not do that on each key, but only on the first one, i.e. upon starting the command itself."

	"Bad: the completion keys also end up there and, as a consequence, trigger additional searches here if we don't filter then out."

	(self eventIsCompletion: anEvt)
		ifTrue: [ ^ self ].
	(self nodeDetect: [ :each | each complexContents asText beginsWith: aMorph contents ] ifNone: [  ])
		ifNotNil: [ :aNodeMorph | 
			baseIndex := aNodeMorph index.
			requestor
				setSelectedMorph: aNodeMorph;
				scrollSelectionIntoView ]