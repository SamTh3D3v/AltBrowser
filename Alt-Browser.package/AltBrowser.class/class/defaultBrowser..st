settings
defaultBrowser: aBoolean
	(Smalltalk tools browser isNil and: [ aBoolean ])
		ifTrue: [ Smalltalk tools register: self as: #browser ]