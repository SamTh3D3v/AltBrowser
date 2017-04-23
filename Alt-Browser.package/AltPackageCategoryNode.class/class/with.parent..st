instance creation
with: anItem parent: aNode
	(anItem key == #Configuration or: [ anItem key == #Baseline ])
		ifTrue: [ ^ AltProjectCategoryNode with: anItem parent: aNode ].
	^ super with: anItem parent: aNode