updating
watch
	"In practice: return false if myself or any of my contents signal a change."

	parent
		ifNil: [ self contents
				do: [ :e | 
					e watch
						ifTrue: [ ^ self changed ] ] ].
	copy notNil
		ifTrue: [ copy == item value
				ifFalse: [ copy := item value.
					contents := nil.
					^ true ] ].
	^ self contents
		inject: false
		into: [ :s :e | 
			e watch
				ifTrue: [ true ]
				ifFalse: [ s ] ]