updating
updateItems
	"This is a full update from the model. Reset all cached data."

	| index itemsStream y visibleHeight |
	index := self owner showIndex max: 1.
	maxShowIndex := nil.
	exposedItems := SmallDictionary new.
	offsetWidth := self width.
	y := 0.
	visibleHeight := self height + self owner horizontalScrollBarHeight.
	itemsStream := AltTreeReadStream on: self owner model.
	itemsStream skip: index - 1.
	[ y < visibleHeight and: [ itemsStream atEnd not ] ]
		whileTrue:
			[ | morph row item |
			item := itemsStream next.
			morph := item asTreeItemMorph privateOwner: self.
			offsetWidth := offsetWidth max: morph right + 2.
			row := Morph new
				hResizing: #rigid;
				vResizing: #rigid;
				color: Color transparent;
				bounds: (0 @ 0 extent: (self width - 2) @ morph bottom);
				yourself.
			row addMorph: morph.
			exposedItems at: index put: row.
			y := y + row height + 2.
			y < visibleHeight
				ifTrue: [ fullyVisibleEndIndex := index ].
			index := index + 1 ].
	endIndex := index - 1.
	y < visibleHeight
		ifTrue: [ maxShowIndex := self owner showIndex ].
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews