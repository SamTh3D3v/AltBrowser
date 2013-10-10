private
itemOrganization
	"A class protocols in Pharo 3.0 are ordered by a set, which makes for random ordering, so we need to create an order on those (and of course, a user arranged order can't be kept because of the complexity it would creates)."

	"In this method, we order the protocols with simple rules: alphabetical, except extensions and initialize / instance creation and accessing in front, and private at the end. Dedicated methods provide for the list of exceptions."

	| result origin ending |
	origin := item organization realCategories sorted.
	origin isEmpty
		ifTrue: [ ^ item protocols ].
	result := OrderedCollection new: origin size.
	origin := origin
		reject: [ :p | 
			(p beginsWith: self orgExtension)
				ifTrue: [ 
					result add: p.
					true ]
				ifFalse: [ false ] ].
	self orgBeginning
		do: [ :b | 
			origin := origin
				reject: [ :p | 
					(p beginsWith: b)
						ifTrue: [ 
							result add: p.
							true ]
						ifFalse: [ false ] ] ].
	ending := OrderedCollection new.
	self orgEnding
		do: [ :e | 
			origin := origin
				reject: [ :p | 
					(p beginsWith: e)
						ifTrue: [ 
							ending add: p.
							true ]
						ifFalse: [ false ] ] ].
	origin do: [ :e | result add: e ].
	result addAll: ending.
	^ result