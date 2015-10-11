menu
showMenuForRowIndex: rowIndex
	| menu |
	(rowIndex notNil and: [ (self isRowIndexSelected: rowIndex) not ])
		ifTrue: [ self selectRowIndex: rowIndex ].
	menu := UIManager default newMenuIn: self for: self model.
	menu := (self model at: rowIndex) buildMenu: menu.
	menu popUpInWorld: self currentWorld