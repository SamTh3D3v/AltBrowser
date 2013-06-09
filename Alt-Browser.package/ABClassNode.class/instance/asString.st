as yet unclassified
asString
	^ self item isMeta
		ifTrue: [ 'Class' ]
		ifFalse: [ self item asString ]