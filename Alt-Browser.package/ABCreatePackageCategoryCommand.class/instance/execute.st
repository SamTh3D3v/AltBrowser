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
				ifTrue: [ AltBrowser rootItems contents add: item afterIndex: (AltBrowser rootItems contents indexOf: requestor selectedItem item) ]
				ifFalse: [ AltBrowser rootItems contents add: item ].
			AltBrowser announcer announce: (AltNodeAdded node: item) ]