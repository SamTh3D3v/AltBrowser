querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Ok, now, we may try this new generation of Implementors search."

	| ast node |
	super buildTextMenu: aMenu on: aTarget with: aRequestor.
	aMenu
		addLine;
		addLine.
	ast := RBParser parseMethod: aTarget text asString onError: [ :msg :pos | ^ self ].
	(node := ast bestNodeFor: aTarget selectionInterval) altTextCommands
		do: [ :c | 
			(c on: aTarget for: aRequestor node: node)
				addItemToMenu: aMenu;
				select ]