initialization
release
	"There is something about releasing models."
	
	treeModel ifNotNil: [treeModel initialize. treeModel := nil].
	textModel ifNotNil: [textModel initialize. textModel := nil].
	super release.
