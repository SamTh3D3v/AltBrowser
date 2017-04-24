instance creation
with: anItem parent: aNode
	(anItem key == #ConfigurationOf or: [ anItem key == #BaselineOf ])
		ifTrue: [ ^ AltProjectCategoryNode with: anItem parent: aNode ].
	^ super with: anItem parent: aNode