querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Ok. Two steps: first, create the menu linked with the node. second, parse the method and create menu items linked to the selected node."

	| ast node |
	super buildTextMenu: aMenu on: aTarget with: aRequestor.
	aMenu
		addLine;
		addLine.
	ast := RBParser parseMethod: aTarget text asString onError: [ :msg :pos | ^ self ].
	ast annotateInClass: self sourceClass.
	(node := ast bestNodeFor: aTarget selectionInterval) altTextCommands
		do: [ :c | (c on: aTarget for: aRequestor node: node) addItemToMenu: aMenu ].
	node canSelect
		ifTrue: [ aTarget textMorph paragraph secondarySelection: node textIntervals ]