user interface
toggleFinder
	finder isNil
		ifTrue: [ 
			finder := AltFinder new.
			finder buildSearchModeToolBar: window ]
		ifFalse: [ 
			finder delete.
			finder := nil ]