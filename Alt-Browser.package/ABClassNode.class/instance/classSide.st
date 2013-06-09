as yet unclassified
classSide
	^ self item isMeta
		ifFalse: [ {(self item classSide)} ]
		ifTrue: [ {} ]