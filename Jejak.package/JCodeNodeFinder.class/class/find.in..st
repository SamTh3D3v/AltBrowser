accessing
find: aNodeId in: aMethod
	"Find a node in an ast in parameter."

	| c |
	c := self new.
	c target: aNodeId.
	[ c visitNode: (RBParser parseMethod: aMethod sourceCode) ]
		on: JCodeNodeFound
		do: [ :ex | ^ ex tag ].
	^ SubscriptOutOfBounds signal