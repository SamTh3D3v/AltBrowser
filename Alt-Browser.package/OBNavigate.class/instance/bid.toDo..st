execution
bid: anInteger toDo: aBlock 
	anInteger > bid ifFalse: [ ^ self ].
	bid := anInteger.
	action := aBlock