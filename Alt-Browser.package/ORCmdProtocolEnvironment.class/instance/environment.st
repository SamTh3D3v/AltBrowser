accessing
environment
	^ super environment forClass: target theClass protocols: (Array with: target name)