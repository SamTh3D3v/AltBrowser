as yet unclassified
asString
	^ self item hasComment
		ifTrue: [ 'comment' asText addAttribute: TextEmphasis italic ]
		ifFalse: [ 'comment' ]