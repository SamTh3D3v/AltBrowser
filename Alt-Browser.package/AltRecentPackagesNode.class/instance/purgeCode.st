private
purgeCode
	"Scan code to remove all old entries."

	[ self item size > 10 ]
		whileTrue: [ 
			self item first key < DateAndTime yesterday
				ifTrue: [ self item removeFirst ]
				ifFalse: [ ^ self ] ]