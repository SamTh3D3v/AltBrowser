execution
execute
	self node binding value isBehavior
		ifTrue: [ AltBrowser openOnClass: self node binding value ]
		ifFalse: [ self node binding value inspect ]