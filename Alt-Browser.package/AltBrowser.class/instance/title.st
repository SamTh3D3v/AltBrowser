accessing
title
	self selectedNode notNil
		ifTrue: [ ^ 'Alt(', self rbEnvironment label,'): ' , self selectedNode title ]
		ifFalse: [ ^ 'Alt Browser (', self rbEnvironment label, ')' ]