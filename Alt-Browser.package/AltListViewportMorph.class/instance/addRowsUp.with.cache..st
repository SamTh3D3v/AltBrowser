updating
addRowsUp: yStart with: upStream cache: oldExposedItems
	"Add rows going up, updating yUp as it goes. Force yUp at the end to be <= 0. "

	| yUp |
	yUp := yStart.
	[ yUp > 0 and: [ upStream atEnd not ] ]
		whileTrue: [ | item row |
			item := upStream next.
			row := oldExposedItems
				at: upStream position
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: upStream position put: row.
			yUp := yUp - row height ].
	^ yUp