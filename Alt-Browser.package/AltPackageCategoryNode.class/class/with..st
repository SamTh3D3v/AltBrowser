instance creation
with: anItem
	(anItem key == #ConfigurationOf or: [ anItem key == #BaselineOf ])
		ifTrue: [ ^ AltProjectCategoryNode with: anItem ].
	^ super with: anItem