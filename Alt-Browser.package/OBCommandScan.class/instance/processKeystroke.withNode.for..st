user interface
processKeystroke: aKeystroke withNode: aNode for: aRequestor
	((self commandsOn: aNode for: aRequestor)
		select: [ :each | each keystroke asKeystroke = aKeystroke ])
		do: [ :each | 
			(each isActive and: [ each isEnabled ]) ifTrue: [
				each execute. 
				^ true ] ].
	^ false