execution
execute
	"Code derived from ORFormatCmd (OmniBrowser) and simplified. Will fail silently if the code is incorrect."

	| source tree formatted |
	source := target text asString.
	tree := RBParser parseMethod: source onError: [ :msg :pos | ^ self ].
	formatted := tree formattedCode.
	formatted = source
		ifTrue: [ ^ self ].
	target
		editString: formatted;
		hasUnacceptedEdits: true