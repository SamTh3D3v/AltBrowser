initialization
release
	"There is something about releasing models."

	treeModel
		ifNotNil: [ 
			treeModel initialize.
			treeModel := nil ].
	textModel
		ifNotNil: [ 
			textModel initialize.
			textModel := nil ].
	self class announcer unsubscribe: self.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	super release