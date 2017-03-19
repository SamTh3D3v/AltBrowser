accessing
do: anAbstractRecord
	"start the visit on the first record item. Returns true or false to indicate
	changes to the subtree."

	self doRecord: anAbstractRecord.
	operators inspect.
	^false