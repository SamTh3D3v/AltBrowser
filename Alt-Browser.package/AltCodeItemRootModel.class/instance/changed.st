updating
changed
	"Refresh the display.
	If one of our items is selected, find if we can reselect the item."

	| i |
	self model ifNil: [ ^ self ].
	self model selectedNode ifNil: [ ^ super changed ].
	i := self indexOf: self model selectedNode.
	i isZero
		ifTrue: [ self model treeMorph selectRowIndexes: #() ]
		ifFalse:
			[ self model treeMorph selectedRowIndex = i
				ifTrue: [ super changed ]
				ifFalse:
					[ self model treeMorph selectRowIndexes: (Array with: i) ] ]