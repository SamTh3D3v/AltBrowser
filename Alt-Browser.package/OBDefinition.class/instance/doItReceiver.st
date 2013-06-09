callbacks
doItReceiver
	| class |
	class := self selectedClass.
	^ class ifNotNil: [ class theNonMetaClass ]
