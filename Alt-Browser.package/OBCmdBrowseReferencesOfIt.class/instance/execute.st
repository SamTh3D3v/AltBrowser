execution
execute
	self halt"self globalReference
		ifNotNil: [ :node | ^ OBReferencesBrowser browseRoot: node ].
	self localReference
		ifNotNil: [ :node | ^ (OBVariablesBrowser browseRoot: node theClass asNode) jumpTo: node ]"