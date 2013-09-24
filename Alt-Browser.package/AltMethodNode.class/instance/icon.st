accessing
icon
	self compiledMethod isOverride
		ifTrue: [ 
			self compiledMethod isOverridden
				ifTrue: [ ^ Smalltalk ui icons arrowUpAndDownIcon ].
			^ Smalltalk ui icons arrowUpIcon ].
	self compiledMethod isOverridden
		ifTrue: [ ^ Smalltalk ui icons arrowDownIcon ].
	^ nil