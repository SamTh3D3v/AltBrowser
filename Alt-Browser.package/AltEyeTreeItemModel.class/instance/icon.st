accessing
icon
	item withErrorsDo: [ :error | ^ Smalltalk ui icons smallWarningIcon ].
	^ [ item icon ]
		on: Error
		do: [ :error | Smalltalk ui icons smallWarningIcon ]