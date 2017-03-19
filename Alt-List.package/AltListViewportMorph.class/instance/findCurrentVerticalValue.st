private
findCurrentVerticalValue
	"Estimate what is the current vertical value given my row items."

	| n |
	(n := self modelSize) ifNil: [ ^ nil ].
	exposedItems
		ifNotNil: [ :e | 
			e
				keysAndValuesDo: [ :i :v | 
					| k xTop xBottom |
					xTop := (i - 1) / n * self height + self top.
					xBottom := i / n * self height + self top.
					k := (v top - xTop) asFloat / (xBottom - xTop - v height).
					(k >= 0 and: [ k <= 1 ])
						ifTrue: [ ^ (self verticalValueForIndex: i) + (k / n) ] ] ].
	^ nil