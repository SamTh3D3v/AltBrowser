accessing
isExpanded: aBoolean
	expanded := aBoolean.
	(self printString, ' expanded: ' , aBoolean printString) logCr.
	expanded
		ifFalse: [ contents := nil ]