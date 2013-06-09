execution
execute
	"The execute may create an object or return us one."

	| result |
	target widget accept.
	result := requestor selectedItem item accept: target getText notifying: target widget.
	(result isNil or: [ result == requestor selectedItem item ])
		ifTrue: [ ^ self ].
	requestor selectPathForAbstractItem: result