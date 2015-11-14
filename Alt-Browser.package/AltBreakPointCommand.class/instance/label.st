accessing
label
	^ astNode hasMetalink
		ifTrue: [ 'Remove breakpoint' ]
		ifFalse: [ 'Set breakpoint' ]