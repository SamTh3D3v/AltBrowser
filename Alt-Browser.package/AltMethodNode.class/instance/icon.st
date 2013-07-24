accessing
icon
	self compiledMethod isOverride
		ifTrue: [ 
			self compiledMethod isOverridden
				ifTrue: [ ^ NautilusIcons iconNamed: #arrowUpAndDown ].
			^ NautilusIcons iconNamed: #arrowUp ].
	self compiledMethod isOverridden
		ifTrue: [ ^ NautilusIcons iconNamed: #arrowDown ].
	^ nil