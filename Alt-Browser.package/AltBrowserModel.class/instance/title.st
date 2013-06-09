accessing
title
	self selectedNode notNil
		ifTrue: [ ^ 'Alt: ' , self selectedNode title ]
		ifFalse: [ ^ 'Alt Browser' ]