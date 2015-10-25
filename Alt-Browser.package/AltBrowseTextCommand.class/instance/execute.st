execution
execute
	self node binding value isBehavior
		ifTrue: [ requestor class openOnClass: self node binding value ]
		ifFalse: [ self node binding value inspect ]