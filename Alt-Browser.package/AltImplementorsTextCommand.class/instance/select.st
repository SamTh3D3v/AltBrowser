execution
select
	"Select the relevant text to show it. Attempt."

	| selectorRegex finalRegex |
	node selectorParts
		do: [ :each | 
			selectorRegex isNil
				ifTrue: [ selectorRegex := each value ]
				ifFalse: [ selectorRegex := selectorRegex , '.*' , each value ] ].
	selectorRegex := selectorRegex copyWithRegex: '\:' matchesReplacedWith: '\:'.
	target textMorph findAndSelect: selectorRegex asRegex startingAt: node start searchBackwards: false