execution
execute
	"Ask for a category name and create it."

	| name item |
	name := UIManager default request: 'New Category name?'.
	name notNil
		ifFalse: [ ^ self ].
	item := AltPackageCategoryNode with: name -> OrderedCollection new.
	requestor selectedNode notNil
		ifTrue: [ 
			requestor selectedNode parentNode notNil
				ifTrue: [ AltBrowser rootItems add: item afterIndex: (AltBrowser rootItems indexOf: requestor selectedNode item) ]
				ifFalse: [ 
					requestor selectedNode item addRPackage: name -> OrderedCollection new.
					AltBrowser aNodeToRebuilt: requestor selectedNode item ] ]
		ifFalse: [ AltBrowser rootItems add: item ].
	AltBrowser announcer announce: (AltNodeAdded node: item).
	^ item