execution
execute
	"The execute may create an object or return us one."

	| result selection |
	target accept.
	selection := requestor selectedNode item.
	result := selection accept: target text notifying: target.
	(result isNil or: [ result == selection ])
		ifTrue: [ ^ self ].
	requestor selectPathForAbstractItem: result