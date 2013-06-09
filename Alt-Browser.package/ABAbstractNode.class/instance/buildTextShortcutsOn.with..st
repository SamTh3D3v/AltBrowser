querying
buildTextShortcutsOn: aTarget with: aRequestor
	"This is an attempt at handling shortcuts..."
	| kmBuilder |
	kmBuilder := KMKeymapBuilder new.
	(Pragma allNamed: #textAreaCommand from: self class to: ABAbstractNode)
		do: [ :e | (self perform: e selector) do: [ :c | (c on: aTarget for: aRequestor) addShortcutToKeymap: kmBuilder ] ].
	^ kmBuilder