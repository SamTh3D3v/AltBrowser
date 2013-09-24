querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Ok. Two steps: first, create the menu linked with the node. Second, parse the message, rebuild the code, print and reparse to get the correct nodes for class and instance variables."

	| inS ast node rewritten |
	super buildTextMenu: aMenu on: aTarget with: aRequestor.
	inS := aTarget text asString readStream.
	rewritten := String
		streamContents: [ :s | 
			s << (inS upToAll: 'instanceVariableNames:') << 'instanceVariableNames:'.
			self rewriteStringOfVars: inS into: s.
			s << (inS upToAll: 'classVariableNames:') << 'classVariableNames:'.
			self rewriteStringOfVars: inS into: s.
			s << inS upToEnd ].
	ast := RBParser parseExpression: rewritten onError: [ :msg :pos | ^ self ].
	ast annotateInClass: self item.
	(node := ast bestNodeFor: aTarget selectionInterval) notNil
		ifTrue: [ 
			aMenu
				addLine;
				addLine.
			node altTextCommands do: [ :c | (c on: aTarget for: aRequestor node: node) addItemToMenu: aMenu ].
			node canSelect
				ifTrue: [ 
					aTarget textMorph paragraph secondarySelection: node textIntervals.
					aTarget textMorph selectionChanged ] ]