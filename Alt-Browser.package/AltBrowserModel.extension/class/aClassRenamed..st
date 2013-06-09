updating
aClassRenamed: anEvent
	"Find the class node, and rebuilt the parent? Overall, there is a lack of correct model integration in those structures."

	| node r |
	node := self rootItems detect: [ :e | (r := e findClass: anEvent classRenamed) notNil ].
	self aNodeToRebuilt: r parentNode