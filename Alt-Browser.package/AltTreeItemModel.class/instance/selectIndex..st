selection
selectIndex: anIndex
	"Select that index (or deselect it if it was selected). Or deselect a previous one if anIndex isNil."

	"Deselect any other item. Expect only single selection."

	"Consider that we are storing the selection."

	| announcement |
	announcement := AltSelectionChanged new.
	selectedItem
		ifNotNil:
			[ :s | 
			announcement oldItems add: s.
			announcement oldIndexes add: selectedIndex ].
	selectedIndex == anIndex
		ifTrue: [ selectedItem := nil.
			selectedIndex := 0 ]
		ifFalse:
			[ selectedItem := self at: (selectedIndex := anIndex).
			announcement newItems add: selectedItem.
			announcement newIndexes add: selectedIndex ].
	self doAnnounce: announcement