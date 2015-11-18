selection
selectIndex: anIndex
	"Select that index. Or deselect a previous one if anIndex isZero."

	"Deselect any other item. Expect only single selection."

	"Consider that we are storing the selection."

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
			[ selectedItem := self at: (selectedIndex := anIndex).
			announcement newItems add: selectedItem.
			announcement newIndexes add: selectedIndex ].
	self doAnnounce: announcement