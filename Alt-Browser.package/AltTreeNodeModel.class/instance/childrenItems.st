accessing
childrenItems
	^ item contents select: [ :e | e isInRBEnvironment: self rbEnvironment ]