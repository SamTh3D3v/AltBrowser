menu
showMenuForRowIndex: rowIndex columnIndex: columnIndex
	| menu |
	(rowIndex notNil and: [ (self isRowIndexSelected: rowIndex) not ])
		ifTrue: [ self selectRowIndex: rowIndex ].
	menu := (self model at: rowIndex) menu.
	menu ifNil: [ ^ self ].
	menu popUpInWorld: self currentWorld