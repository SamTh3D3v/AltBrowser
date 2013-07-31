printing
asString
	| string parentString |
	string := self item packageName.
	parentString := parentNode packageName.
	((string beginsWith: parentString) and: [ string ~= parentString ])
		ifTrue: [ string := string allButFirst: parentString size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string