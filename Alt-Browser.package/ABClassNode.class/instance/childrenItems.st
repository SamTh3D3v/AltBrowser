as yet unclassified
childrenItems
	^ self item isMeta
		ifFalse: [ {(self item classSide)} , self item organization categories ]
		ifTrue: [ self item organization categories ]