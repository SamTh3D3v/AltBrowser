streaming
next
	"Next: on a node, it's either its first child, or its sibling."

	"For the very first node, take in account the hidden root case."

	item
		ifNil:
			[ (collection at: 1) == collection
				ifTrue: [ item := collection ]
				ifFalse:
					[ self stack add: (ReadStream on: collection contents).
					item := self stack last next ].
			position := 1.
			^ item ].
	item contents isEmpty
		ifFalse:
			[ self stack add: (ReadStream on: item contents).
			item := self stack last next ]
		ifTrue:
			[ [ self stack last atEnd ]
				whileTrue:
					[ self stack removeLast.
					self stack isEmpty
						ifTrue: [ position := position + 1.
							^ item := nil ] ].
			item := self stack last next ].
	position := position + 1.
	^ item