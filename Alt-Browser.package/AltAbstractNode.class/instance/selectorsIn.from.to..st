querying
selectorsIn: aProtocolSymbol from: aClass to: aTarget
	"Search for all selectors belonging to a certain protocol, starting from aClass and going up the hierarchy."

	| selectors |
	selectors := (aClass selectorsInProtocol: aProtocolSymbol) asSet.
	(aClass allSuperclassesIncluding: aTarget)
		do: [ :eachClass | selectors addAll: (eachClass selectorsInProtocol: aProtocolSymbol) ].
	^ selectors