execution
execute
	self node binding value isBehavior
		ifTrue: [ AltBrowser fullOnClass: self node binding value ]
		ifFalse: [ self node binding value inspect ]