accessing
environment
	^ super environment instVarRefsTo: (self chooseFrom: self instanceVariables) in: target theClass