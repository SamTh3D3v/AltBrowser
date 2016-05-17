updating
updateRows: oldExposedItems
	"Model hasn't changed, just complement missing rows."

	| item index yDown yUp row upStream downStream |
	index := self baselineIndex.
	exposedItems := SmallDictionary new.
	upStream := self owner model asReverseReadStream
		skip: self modelSize - index;
		yourself.
	downStream := self owner model asReadStream
		skip: index;
		yourself.
	item := upStream next.
	row := oldExposedItems
		at: index
		ifAbsent: [ self rowMorphForItem: item ].
	exposedItems at: index put: row.
	yUp := self getRowTop: row height.
	yDown := yUp + row height.
	[ yUp > 0 and: [ upStream atEnd not ] ]
		whileTrue: [ item := upStream next.
			row := oldExposedItems
				at: upStream position
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: upStream position put: row.
			yUp := yUp - row height ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	[ yDown < self height and: [ downStream atEnd not ] ]
		whileTrue: [ item := downStream next.
			row := oldExposedItems
				at: downStream position
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: downStream position put: row.
			yDown := yDown + row height ].
	(downStream atEnd and: [ yDown < self height ])
		ifTrue:
			[ yUp := yUp + self height - yDown.	"Make sure there is no empty space past the end, if possible."
			[ yUp > 0 and: [ upStream atEnd not ] ]
				whileTrue: [ item := upStream next.
					row := oldExposedItems
						at: upStream position
						ifAbsent: [ self rowMorphForItem: item ].
					exposedItems at: upStream position put: row.
					yUp := yUp - row height ].
			yUp > 0
				ifTrue: [ yDown := yDown - yUp.
					yUp := 0 ] ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do: [ :each | each width: self effectiveWidth - 2 ]