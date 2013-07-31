printing
asString
	"Reduce based on the parent name."

	| string |
	string := (item isKindOf: MCWorkingCopy)
		ifTrue: [ self item packageName ]
		ifFalse: [ item printString ].
	(string beginsWith: parentNode asString)
		ifTrue: [ string := string allButFirst: parentNode asString size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string