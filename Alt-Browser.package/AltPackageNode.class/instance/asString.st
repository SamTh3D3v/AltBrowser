printing
asString
	| string |
	string := self item packageName.
	(string beginsWith: parentNode packageName)
		ifTrue: [ string := string allButFirst: parentNode packageName size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string