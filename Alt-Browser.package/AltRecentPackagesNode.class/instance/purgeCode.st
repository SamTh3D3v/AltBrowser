private
purgeCode
	"Scan code to remove all old entries."

	[ self code size > 10 ]
		whileTrue: [ 
			self code first key < DateAndTime yesterday
				ifTrue: [ self halt. self code removeFirst ]
				ifFalse: [  ^ self ] ]