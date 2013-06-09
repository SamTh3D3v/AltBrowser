private
chooseSelector
	| selectors |
	selectors := target theClass selectors asArray sort.
	^ selectors isEmpty ifFalse: [ OBChoiceRequest labels: selectors ]