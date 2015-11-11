instance creation
fullOnEnvironment: aRBEnvironment select: anItem with: expandedItems
	" I am environment aware. Just open the environment. And open all you can from the expanded items."

	| items |
	items := (expandedItems reject: [ :i | i isNil ])
		collect: [ :i | i item ].
	^ self new
		rbEnvironment: aRBEnvironment;
		selectPathForAbstractItem: anItem;
		expandAllSuchThat: [ :item | items includes: item item ];
		open;
		yourself