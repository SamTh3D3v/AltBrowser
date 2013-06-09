execution
execute
	"Ask for a category name and create it."

	| name |
	name := UIManager default request: 'New Category name?'.
	name notNil
		ifTrue: [ 
			| item |
			item := ABPackageCategoryNode with: name -> OrderedCollection new.
			requestor selectedNode notNil
				ifTrue: [ AltBrowserModel rootItems add: item afterIndex: (AltBrowserModel rootItems indexOf: requestor selectedNode item) ]
				ifFalse: [ AltBrowserModel rootItems add: item ].
			AltBrowserModel announcer announce: (AltNodeAdded node: item) ]