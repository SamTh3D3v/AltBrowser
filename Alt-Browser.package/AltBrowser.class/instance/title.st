accessing
title
	self selectedItem notNil
		ifTrue:
			[ ^ 'Alt Neo(' , self rbEnvironment label , '): '
				, self selectedItem title ]
		ifFalse: [ ^ 'Alt Browser Neo (' , self rbEnvironment label , ')' ]