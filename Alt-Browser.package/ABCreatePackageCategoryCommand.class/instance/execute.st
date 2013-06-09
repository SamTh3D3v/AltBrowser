execution
execute
	"Ask for a category name and create it."

	| name |
	name := UIManager default request: 'New Category name?'.
	name notNil
		ifTrue: [ 
			| item |
			item := ABPackageCategoryNode with: name -> OrderedCollection new.
			requestor selectedItem notNil
				ifTrue: [ AltBrowser roots add: item afterIndex: (AltBrowser roots indexOf: requestor selectedItem item) ]
				ifFalse: [ AltBrowser roots add: item ].
			AltBrowser announcer announce: (AltNodeAdded node: item) ]