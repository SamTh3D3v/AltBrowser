selection
selectIndex: anIndex
	"Select that index (or deselect it if it was selected). Or deselect a previous one if anIndex isNil."

	"Deselect any other item. Expect only single selection."

	| announcement done stream e |
	done := false.
	announcement := AltSelectionChanged new.
	stream := self asReadStream.
	[ stream atEnd or: [ done ] ]
		whileFalse:
			[ e := stream next.
			stream position == anIndex
				ifTrue:
					[ e selected: e selected not.
					e selected
						ifFalse:
							[ announcement oldIndexes add: anIndex.
							announcement oldItems add: e.
							done := true ]
						ifTrue:
							[ announcement newIndexes add: anIndex.
							announcement newItems add: e ] ]
				ifFalse:
					[ e selected
						ifTrue:
							[ e selected: false.
							announcement oldIndexes add: stream position.
							announcement oldItems add: e ] ] ].
	self doAnnounce: announcement