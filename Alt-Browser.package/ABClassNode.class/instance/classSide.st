private
classSide
	^ self item isMeta
		ifFalse: [ {(self item classSide)} ]
		ifTrue: [ {} ]