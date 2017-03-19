aspects
source
	^ source isNil
		ifTrue: [ source := ValueHolder new contents: String new ]
		ifFalse: [ source ]