private
addRowsDown: yStart with: downStream cache: oldExposedItems
	"Add rows going down, increasing yDown (initial point yStart)."

	| yDown |
	yDown := yStart.
	[ yDown < self height and: [ downStream atEnd not ] ]
		whileTrue: [ | item row |
			item := downStream next.
			row := oldExposedItems
				at: downStream position
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: downStream position put: row.
			yDown := yDown + row height ].
	^ yDown