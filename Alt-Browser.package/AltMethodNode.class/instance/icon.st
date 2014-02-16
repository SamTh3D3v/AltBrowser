accessing
icon
	self compiledMethod isOverride
		ifTrue: [ 
			self compiledMethod isOverridden
				ifTrue: [ ^ #arrowUpAndDown ].
			^ #arrowUp ].
	self compiledMethod isOverridden
		ifTrue: [ ^ #arrowDown ].
	^ nil