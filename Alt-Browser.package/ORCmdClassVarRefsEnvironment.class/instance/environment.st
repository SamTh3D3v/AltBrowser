accessing
environment
	^ super environment classVarRefsTo: (self chooseFrom: self classVariables) in: target theClass