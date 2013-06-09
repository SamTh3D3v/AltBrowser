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
				ifTrue: [ AltBrowser rootItems add: item afterIndex: (AltBrowser rootItems indexOf: requestor selectedItem item) ]
				ifFalse: [ AltBrowser rootItems add: item ].
			AltBrowser allInstances do: [ :i | i addNode: (ABTreeNodeModel with: item model: item) ] ]