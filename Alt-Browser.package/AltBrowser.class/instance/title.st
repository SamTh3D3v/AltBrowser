accessing
title
	self selectedItem notNil
		ifTrue: [ ^ 'Alt: ' , self selectedItem title ]
		ifFalse: [ ^ 'Alt Browser' ]