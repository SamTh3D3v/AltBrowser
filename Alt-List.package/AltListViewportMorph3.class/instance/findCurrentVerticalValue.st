as yet unclassified
findCurrentVerticalValue
	"Current value is top most item, with an after comma part as a % of item above my top."

	"I reach here before my items are correctly shifted in position?"

	exposedItems
		ifNotNil: [ :e | 
			| i v d |
			i := e keys sorted first.
			v := e at: i.
			v bottom < self top
				ifTrue: [ d := (0 - v top) / v height asFloat ]
				ifFalse: [ d := (self top - v top) / v height asFloat ].
			^ self verticalValueForIndex: i + d ].
	^ nil