accessing
addCommandsOn: aNode for: aRequestor to: aSet 
	| cmd |
	factories do: 
		[ :ea | 
		cmd := ea 
			on: aNode
			for: aRequestor.
		(cmd wantsMenu and: [ cmd isActive ])
			ifTrue: [ aSet add: cmd ] ]