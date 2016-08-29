shortcuts
buildTextShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(Pragma allNamed: #textAreaCommand from: self class to: self class)
		do: [ :e | 
			(self perform: e methodSelector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor textMorph for: aRequestor.
					command buildShortcut: aKMDispatcher ] ]