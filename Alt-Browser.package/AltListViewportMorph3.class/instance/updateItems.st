as yet unclassified
updateItems
	"Found it, under certain circumstances, this code misses the fact that the bottom isn't at the bottom (depending on ligne progress). Overall, I think this is too complex and I need to make it simpler."

	| index iUp iDown yDown yUp visibleHeight row upStream downStream |
	index := self baselineIndex.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	maximumWidth := 0.
	row := self rowMorphForItem: (self owner model at: index).
	exposedItems at: index put: row.
	yUp := self getRowTop: row height.
	yDown := yUp + row height.
	iUp := index - 1.
	upStream := self owner model asReverseReadStream.
	upStream skip: self modelSize - iUp.
	iDown := index.
	downStream := self owner model asReadStream.
	downStream skip: iDown.
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue: [ iDown := iDown + 1.
			row := self rowMorphForItem: downStream next.
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	(downStream atEnd
		and: [ yDown < visibleHeight and: [ upStream atEnd not ] ])
		ifTrue: [ yUp := yUp + visibleHeight - yDown.
			[ yUp > 0 and: [ upStream atEnd not ] ]
				whileTrue: [ row := self rowMorphForItem: upStream next.
					exposedItems at: iUp put: row.
					yUp := yUp - row height.
					iUp := iUp - 1 ] ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do: [ :each | each width: self effectiveWidth - 2 ]