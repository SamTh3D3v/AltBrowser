querying
buildTreeShortcutsOn: aMorph with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(self selectorsIn: '.*tree commands' from: self class upTo: AltAbstractNode)
		do: [ :e | 
			(self perform: e)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor treeMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aMorph ] ] ]