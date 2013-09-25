private
childrenItems
	^ self item isMeta
		ifFalse: [ 
			{(self item classSide).
			(self item)} , self item organization realCategories ]
		ifTrue: [ self item organization realCategories ]