updating
updateRows
	"This is a partial update. Reuse morphs as much as possible, do not reset bounds."

	| index itemsStream y visibleHeight oldExposedItems |
	index := self owner showIndex max: 1.
	oldExposedItems := exposedItems.
	exposedItems := SmallDictionary new.
	y := 0.
	visibleHeight := self height.
	itemsStream := AltTreeReadStream on: self owner model.
	itemsStream skip: index - 1.
	[ y < visibleHeight and: [ itemsStream atEnd not ] ]
		whileTrue:
			[ | morph row item |
			item := itemsStream next.
			(oldExposedItems includesKey: index)
				ifTrue: [ row := oldExposedItems at: index ]
				ifFalse:
					[ morph := item asTreeItemMorph privateOwner: self.
					offsetWidth := offsetWidth max: morph right + 2.
					row := Morph new
						hResizing: #rigid;
						vResizing: #rigid;
						color: Color transparent;
						bounds: (0 @ 0 extent: (self width - 2) @ morph bottom);
						yourself.
					row addMorph: morph ].
			exposedItems at: index put: row.
			y := y + row height + 2.
			index := index + 1 ].
	endIndex := index.
	y < visibleHeight
		ifTrue: [ maxShowIndex := self owner showIndex ].
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews