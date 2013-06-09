callbacks
text
	| comment |
	comment := theClass organization classComment.
	^ comment isEmpty 
		ifTrue: [ self template ] 
		ifFalse: [ comment ]