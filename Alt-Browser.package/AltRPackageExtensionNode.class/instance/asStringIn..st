printing
asStringIn: anAltTreeNodeModel
	"Reduce based on the parent name. The parameter shows the 'visible' hierarchy, use that to reduce the name."

	| string parentString |
	string := self asString.
	anAltTreeNodeModel parentNode
		ifNil: [ ^ string ].
	parentString := anAltTreeNodeModel parentNode asString.
	((string beginsWith: parentString) and: [ string ~= parentString ])
		ifTrue: [ string := string allButFirst: parentString size ].
	string first = $-
		ifTrue: [ ^ string allButFirst ].
	^ string