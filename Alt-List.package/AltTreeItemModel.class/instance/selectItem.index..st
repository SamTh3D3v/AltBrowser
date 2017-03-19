selection
selectItem: anItem index: anIndex
	"Select that item at this index. Or deselect a previous one if anIndex isZero (and anItem is then null)."

	"Deselect any other item. Expect only single selection."

	| announcement |
	selectedIndex == anIndex
		ifTrue: [ ^ self ].
	announcement := AltSelectionChanged new.
	selectedItem
		ifNotNil:
			[ :s | 
			announcement oldItems add: s.
			announcement oldIndexes add: selectedIndex ].
	anIndex isZero
		ifTrue: [ selectedItem := nil.
			selectedIndex := 0 ]
		ifFalse:
			[ selectedItem := anItem.
			selectedIndex := anIndex.
			announcement newItems add: selectedItem.
			announcement newIndexes add: selectedIndex ].
	self doAnnounce: announcement