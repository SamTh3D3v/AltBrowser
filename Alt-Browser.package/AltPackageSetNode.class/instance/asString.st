printing
asString
	"Reduce based on the parent name."

	| string parentString |
	string := (item isKindOf: MCWorkingCopy)
		ifTrue: [ self item packageName ]
		ifFalse: [ item printString ].
	parentNode ifNil: [ ^ string ].
	parentString := parentNode asString.
	((string beginsWith: parentString) and: [ string ~= parentString ])
		ifTrue: [ string := string allButFirst: parentString size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string