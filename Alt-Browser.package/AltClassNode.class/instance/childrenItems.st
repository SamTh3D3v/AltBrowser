private
childrenItems
	"A class protocols in Pharo 3.0 are ordered by a set, which makes for random ordering, so we need to create an order on those (and of course, a user arranged order can't be kept because of the complexity it would creates)."

	^ self item isMeta
		ifFalse: [ 
			{(self item classSide).
			(self item)} , self itemOrganization ]
		ifTrue: [ self itemOrganization ]