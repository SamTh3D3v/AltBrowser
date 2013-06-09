execution
execute
	| categories category before |
	categories := self categories sorted.
	category := OBCompletionRequest new
		assisted: true;
		collection: categories;
		prompt: 'Add Category';
		signal.
	category isNil ifTrue: [ ^ self ].
	before := requestor children
		at: requestor selection + 1
		ifAbsent: [ nil ].
	target organization
		addCategory: category
		before: (before isNil
			ifFalse: [ before name ]).
	self 
		select: (target categoryNodeNamed: category)
		with: requestor announcer