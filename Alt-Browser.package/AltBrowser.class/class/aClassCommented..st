updating
aClassCommented: anEvent
	"Find the comment node and refresh it (or the class node, should be good enough)."

	| node r |
	node := self roots detect: [ :e | (r := e findClass: anEvent classCommented) notNil ].
	self aNodeToRebuilt: r