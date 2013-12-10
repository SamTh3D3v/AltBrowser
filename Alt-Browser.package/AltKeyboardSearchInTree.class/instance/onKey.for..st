user actions
onKey: anEvt for: aMorph
	"On each key, track and select."

	(requestor allNodeMorphs detect: [ :each | each complexContents asText beginsWith: aMorph contents ] ifNone: [  ])
		ifNotNil: [ :aNodeMorph | 
			requestor
				setSelectedMorph: aNodeMorph;
				scrollSelectionIntoView ]