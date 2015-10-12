accessing
source
	^ source isNil
		ifTrue: [ 
			source := AltBrowserCodeModel new.
			source browser: self ]
		ifFalse: [ source ]