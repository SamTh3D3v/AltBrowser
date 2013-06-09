accessing
selection
"	^ (target isKindOf: OBTextSelection)
		ifTrue: [ target text asString ]"