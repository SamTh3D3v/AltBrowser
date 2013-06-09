accessing
environment
	| literal |
	literal := self request: 'Literals matching:'.
	^ (super environment matches: literal) 
		label: 'Literals matching ' , literal printString;
		yourself