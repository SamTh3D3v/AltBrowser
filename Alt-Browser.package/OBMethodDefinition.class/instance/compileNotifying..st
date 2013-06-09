compiling
compileNotifying: aController 
	^ self compileClass 
		compile: self compileText
		classified: self compileCategory
		notifying: aController