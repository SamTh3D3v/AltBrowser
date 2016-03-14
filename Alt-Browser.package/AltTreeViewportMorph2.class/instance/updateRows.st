accessing
updateRows
	"..."

	| index iUp iDown y yDown yUp visibleHeight row delta oldExposedItems upStream downStream |
	index := self baselineIndex.
	oldExposedItems := exposedItems.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	row := oldExposedItems
		at: index
		ifAbsent: [ self rowMorphForItem: (self owner model at: index) ].
	exposedItems at: index put: row.
	yUp := self getRowTop: row height.
	yDown := yUp + row height.
	iUp := index - 1.
	upStream := self owner model asReverseReadStream
		skip: self modelSize - iUp;
		yourself.
	iDown := index.
	downStream := self owner model asReadStream
		skip: iDown;
		yourself.
	[ yUp > 0 and: [ upStream atEnd not ] ]
		whileTrue:
			[ | item |
			item := upStream next.
			row := oldExposedItems
				at: iUp
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: iUp put: row.
			yUp := yUp - row height.
			iUp := iUp - 1 ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue:
			[ | item |
			iDown := iDown + 1.
			item := downStream next.
			row := oldExposedItems
				at: iDown
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do:
			[ :each | 
			each privateOwner: nil.
			each width: self effectiveWidth - 2.
			each privateOwner: self ].
	self submorphsReorganize