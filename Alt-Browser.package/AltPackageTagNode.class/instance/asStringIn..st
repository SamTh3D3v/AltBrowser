printing
asStringIn: anAltTreeNodeModel
	"Reduce based on the parent name. The parameter shows the 'visible' hierarchy, use that to reduce the name."

	| string parentString |
	string := self asString.
	(parent isNil or: [ anAltTreeNodeModel parentNode isNil ])
		ifTrue: [ ^ string ].
	parentString := anAltTreeNodeModel parentNode item asString.
	((string beginsWith: parentString) and: [ string ~= parentString ])
		ifTrue: [ string := string allButFirst: parentString size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string