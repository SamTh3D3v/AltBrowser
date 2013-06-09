execution
categorize: aSelector
	CategorizationRules do: [ :rule |
		| result |
		result := rule value: target theClass value: aSelector.
		result isNil 
			ifFalse: [ ^ self organization classify: aSelector under: result ] ]