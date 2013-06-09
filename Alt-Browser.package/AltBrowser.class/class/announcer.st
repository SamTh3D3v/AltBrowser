accessing
announcer
	announcer isNil
		ifTrue: [ announcer := Announcer new ].
	^announcer