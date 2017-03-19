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
	yUp := self addRowsUp: yUp with: upStream cache: oldExposedItems.
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	yDown := self
		addRowsDown: yDown
		with: downStream
		cache: oldExposedItems.
	(downStream atEnd and: [ yDown < self height ])
		ifTrue:
			[ yUp := yUp + self height - yDown.
			yUp := self addRowsUp: yUp with: upStream cache: oldExposedItems.
			yUp > 0
				ifTrue: [ yDown := yDown - yUp.
					yUp := 0 ] ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do: [ :each | each width: self effectiveWidth - 2 ]