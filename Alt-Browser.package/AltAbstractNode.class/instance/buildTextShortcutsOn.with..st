querying
buildTextShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(self selectorsIn: 'commands-text' from: self class to: AltAbstractNode)
		do: [ :e | 
			(self perform: e)
				do: [ :c | 
					| command |
					command := c on: aRequestor textMorph for: aRequestor.
					command buildShortcut: aKMDispatcher ] ]