*alt-browser
altTextCommands
	"Alt Browser commands enabled on this RB node."

	self selector = #example
		ifTrue:
			[ ^ #(#AltImplementorsOfTextCommand #AltSendersTextCommand #AltMethodDoItCommand) ]
		ifFalse:
			[ ^ #(#AltImplementorsOfTextCommand #AltSendersTextCommand) ]