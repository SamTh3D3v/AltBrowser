signaling
select: aString 
	| index |
	index := labels indexOf: aString.
	self resume: (values 
			at: index
			ifAbsent: [ nil ])