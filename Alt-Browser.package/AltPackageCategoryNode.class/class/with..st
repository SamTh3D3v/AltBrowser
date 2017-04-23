instance creation
with: anItem
	(anItem key == #Configuration or: [ anItem key == #Baseline ])
		ifTrue: [ ^ AltProjectCategoryNode with: anItem ].
	^ super with: anItem