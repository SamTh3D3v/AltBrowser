updating
changed
	"Refresh the display.
	If one of our items is selected, find if we can reselect the item."

	| i |
	self model ifNil: [ ^ self ].
	self model selectedNode ifNil: [ ^ super changed ].
	i := self indexOf: self model selectedNode.
	i isZero
		ifTrue:
			[ self model treeMorph
				ifNotNil: [ :t | t selectRowIndexesNoUpdate: #() ].
			super changed ]
		ifFalse:
			[ self model treeMorph
				ifNotNil:
					[ :t | 
					t isFirstSelectionVisible
						ifTrue:
							[ self model treeMorph
								selectRowIndexesNoUpdate: (Array with: i).
							super changed.
							self model treeMorph ensureVisibleSelection ]
						ifFalse: [ super changed ] ]
				ifNil: [ super changed ] ]