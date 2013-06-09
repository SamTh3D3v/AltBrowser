printing
asText
	^ self item hasComment
		ifTrue: [ 'comment' ]
		ifFalse: [ '!comment' ]