execution
execute
	| list choice |
	list := target container organization
		listAtCategoryNamed: target name.
	list isEmpty 
		ifTrue: [ ^ target remove; announceDeletionWith: requestor announcer ].
	choice := OBConfirmationRequest
		prompt: 'Are you sure you want to remove this category and all its elements?'
		confirm: 'Remove'.
	(choice notNil and: [ choice ])
		ifTrue: [ ^ target remove; announceDeletionWith: requestor announcer ]