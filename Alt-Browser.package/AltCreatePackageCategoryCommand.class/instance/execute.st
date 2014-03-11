execution
execute
	"Ask for a category name and create it."

	| name cat |
	name := UIManager default request: 'New Category name?'.
	name ifNil: [ ^ self ].
	(AltBrowser findPackageCategory: name)
		ifNotNil: [ :item | 
			self inform: name , ' already exists'.
			^ item ].
	cat := name -> OrderedCollection new.
	requestor selectedNode notNil
		ifTrue: [ 
			requestor selectedNode parentNode notNil
				ifTrue: [ 
					AltBrowser rootItems
						add: (AltPackageCategoryNode with: cat)
						afterIndex: (AltBrowser rootItems indexOf: requestor selectedNode item).
					AltBrowser aRootNodesChange ]
				ifFalse: [ 
					requestor selectedNode item addRPackage: cat.
					AltBrowser aNodeToRebuilt: requestor selectedNode item ] ]
		ifFalse: [ 
			AltBrowser rootItems add: (AltPackageCategoryNode with: cat).
			AltBrowser aRootNodesChange ].
	AltBrowser updateCategories.
	^ AltBrowser findPackageCategory: name