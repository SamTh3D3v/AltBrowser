*alt-browser
addChildrenForList: hostList addingTo: morphList withExpandedNodes: expandedNodes
	"Consider that the true deletion will be or has been done."

	complexContents hasContents
		ifFalse: [ ^ self ].
	firstChild := hostList
		addMorphsTo: morphList
		from: complexContents contents
		withExpandedItems: expandedNodes
		atLevel: indentLevel + 1