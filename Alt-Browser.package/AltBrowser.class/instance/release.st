initialize-release
release
	"Very strange release sequence with the EditorFindReplaceDialogWindow initialize."

	self class announcer unsubscribe: self.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	root ifNotNil: [ root announcer unsubscribe: self ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	treeMorph ifNotNil: [ treeMorph release ].
	EditorFindReplaceDialogWindow initialize.
	self class announcer unsubscribe: self.
	super release