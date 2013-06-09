updating
aClassCommented: anEvent
	"Filter out based on the class."

	(anEvent classCommented == item or: [ anEvent classCommented == item class ])
		ifTrue: [ 
			self contents do: [ :e | e aClassCommented: anEvent ].
			^ true ].
	^ false