accessing
childrenItems
	^ (item contents collect: [ :e | e asPerRBEnvironment: self rbEnvironment ]) reject: [ :e | e isNil ]