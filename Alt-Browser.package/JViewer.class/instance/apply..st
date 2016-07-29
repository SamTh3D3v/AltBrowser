actions
apply: aRV
	self selection isNil
		ifFalse: [ 
			(aRV do: self selection)
				ifTrue: [ self update ] ]