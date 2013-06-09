accessing
node
	^ column isNil 
		ifTrue: [ node ]
		ifFalse: [ column selectedNode ]