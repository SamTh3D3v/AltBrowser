execution
execute
	"The execute may create an object or return us one."

	| result selection |
	target widget accept.
	selection := requestor selectedItem item.
	result := selection accept: target text notifying: target widget.
	(result isNil or: [ result == selection ])
		ifTrue: [ ^ self ].
	requestor selectPathForAbstractItem: result