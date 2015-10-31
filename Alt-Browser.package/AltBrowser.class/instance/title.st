accessing
title
	self selectedItem notNil
		ifTrue:
			[ ^ 'Alt (' , self rbEnvironment label , '): '
				, self selectedItem title ]
		ifFalse: [ ^ 'Alt (' , self rbEnvironment label , ')' ]