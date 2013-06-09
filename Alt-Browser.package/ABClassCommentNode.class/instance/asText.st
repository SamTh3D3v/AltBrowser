printing
asText
	^ self item hasComment
		ifTrue: [ 'comment' asText addAttribute: TextEmphasis italic ]
		ifFalse: [ 'comment' ]