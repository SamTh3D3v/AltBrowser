compiling
compileMethod: aText notifying: aController 
	self compileClass: self theClass.
	self compileCategory: self category.
	self compileText: aText.
	^ self compileNotifying: aController