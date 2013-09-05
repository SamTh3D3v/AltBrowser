accessing
title
	self selectedNode notNil
		ifTrue: [ ^ 'Alt(', self environment label,'): ' , self selectedNode title ]
		ifFalse: [ ^ 'Alt Browser (', self environment label, ')' ]