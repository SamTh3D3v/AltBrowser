execution graph
exit: aValue
	"going out of a level, with a returned value."

	stack removeLast.
	^aValue