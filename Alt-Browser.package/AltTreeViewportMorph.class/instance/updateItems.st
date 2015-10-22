updating
updateItems
	"This is a full update from the model. Reset all cached data."

	| index itemsStream y visibleHeight firstRowHeight |
	index := self owner showIndex max: 1.
	maxShowIndex := nil.
	firstRowHeight := nil.
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
				bounds:
					(0 @ 0 extent: (self width - 2 max: morph right) @ morph bottom);
				yourself.
			row addMorph: morph.
			exposedItems at: index put: row.
			y := y + row height + 2.
			firstRowHeight ifNil: [ firstRowHeight := row height ].
			y < visibleHeight
				ifTrue: [ fullyVisibleEndIndex := index ].
			index := index + 1 ].
	endIndex := index - 1.
	(y < visibleHeight and: [ visibleHeight - y < firstRowHeight ])
		ifTrue: [ maxShowIndex := self owner showIndex ].
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews