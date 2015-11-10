selection
selectIndex: anIndex
	"Select that index (or deselect it if it was selected). Or deselect a previous one if anIndex isNil."

	"Deselect any other item. Expect only single selection."

	| oldSelected newSelected done stream e |
	done := false.
	stream := self asReadStream.
	newSelected := #().
	oldSelected := #().
	[ stream atEnd or: [ done ] ]
		whileFalse:
			[ e := stream next.
			stream position == anIndex
				ifTrue:
					[ e selected: e selected not.
					e selected
						ifFalse:
							[ oldSelected := Array with: anIndex.
							done := true ]
						ifTrue: [ newSelected := Array with: anIndex ] ]
				ifFalse:
					[ e selected
						ifTrue:
							[ e selected: false.
							oldSelected := Array with: stream position ] ] ].
	self announcer
		announce: (AltSelectionChanged from: oldSelected to: newSelected)