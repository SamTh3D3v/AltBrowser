accessing
itemComment
	^ self selectedItem ifNil: [ '' ] ifNotNil: [ :anItem | anItem item sourceComment ]