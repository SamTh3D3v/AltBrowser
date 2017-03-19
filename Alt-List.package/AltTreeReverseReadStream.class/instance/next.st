streaming
next
	"Next: on a node, it's either its first child, or its sibling."

	"For the very first node, take in account the hidden root case."

	position <= 1
		ifTrue: [ ^ nil ].
	stack isEmpty
		ifTrue: [ position := 0.
			^ nil ].
	stack last atEnd
		ifFalse:
			[ | n |
			[ n := stack last peek.
			n contents isEmpty ]
				whileFalse: [ stack add: (ReadStream on: n contents reversed) ].
			item := stack last next ]
		ifTrue:
			[ stack removeLast.
			self assert: stack notEmpty.
			self assert: stack first atEnd not.
			item := stack last next ].
	position := position - 1.
	^ item