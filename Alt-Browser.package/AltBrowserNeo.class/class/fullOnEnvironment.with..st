instance creation
fullOnEnvironment: aRBEnvironment with: expandedItems
	" I am environment aware. Just open the environment. And open all you can from the expanded items."

	^ self new
		rbEnvironment: aRBEnvironment;
		open;
		expandAllSuchThat: [ :item | expandedItems includes: item ];
		yourself