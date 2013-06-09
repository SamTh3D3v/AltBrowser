accessing
environment
	^ super environment instVarWritersTo: (self chooseFrom: self instanceVariables) in: target theClass