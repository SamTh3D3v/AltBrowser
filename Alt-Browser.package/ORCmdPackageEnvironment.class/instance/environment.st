accessing
environment
	| package |
	^ (super environment forPackages: (Array with: (package := self package))) 
		label: package packageName