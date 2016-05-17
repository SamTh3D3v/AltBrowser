updating
addRowsDown: yStart with: downStream cache: oldExposedItems limit: visibleHeight
	"Add rows going up, updating yUp as it goes. Force yUp at the end to be <= 0. "

	| yDown |
	yDown := yStart.
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue: [ | item row |
			item := downStream next.
			row := oldExposedItems
				at: downStream position
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: downStream index put: row.
			yDown := yDown + row height ].
	^ yDown