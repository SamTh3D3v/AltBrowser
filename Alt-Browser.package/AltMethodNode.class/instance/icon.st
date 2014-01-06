accessing
icon
	self compiledMethod isOverride
		ifTrue: [ 
			self compiledMethod isOverridden
				ifTrue: [ ^ #arrowUpAndDownIcon ].
			^ #arrowUpIcon ].
	self compiledMethod isOverridden
		ifTrue: [ ^ #arrowDownIcon ].
	^ nil