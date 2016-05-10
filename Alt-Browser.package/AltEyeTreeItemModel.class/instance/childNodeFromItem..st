accessing
childNodeFromItem: anItem
	anItem class == GLMCompositePresentation
		ifTrue: [ ^ AltTreeGTILabelModel on: anItem ].
	^ super childNodeFromItem: anItem