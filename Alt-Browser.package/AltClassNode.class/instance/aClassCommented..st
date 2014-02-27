updating
aClassCommented: anEvent
	"Filter out based on the class."

	(anEvent classCommented == self itemClass or: [ anEvent classCommented == self itemClass class ])
		ifTrue: [ 
			self contents do: [ :e | e aClassCommented: anEvent ].
			^ true ].
	^ false