execution
execute
	"Now this is utterly ugly, but unfortunately I see no better way doing this. This is not going to work in any view other than morphic and will silently fail."

	| panel class morph source tree formatted |
	panel := requestor browser definitionPanel.
	class := Smalltalk classNamed: #OBPluggableTextMorph.
	class isNil
		ifTrue: [ ^ self ].
	morph := class allSubInstances
		detect: [ :each | each model == panel ]
		ifNone: [ ^ self ].
	source := morph text asString.
	tree := RBParser 
		parseMethod: source
		onError: [ :msg :pos | ^ self ].
	formatted := tree formattedCode.
	formatted = source
		ifTrue: [ ^ self ].
	morph editString: formatted; hasUnacceptedEdits: true