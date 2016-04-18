shortcuts
buildTreeShortcutsOn: aMorph with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	self treeAreaCommands
		do: [ :c | 
			| command |
			command := c asClass on: aRequestor treeMorph for: aRequestor.
			command isEnabled
				ifTrue: [ command buildShortcut: aMorph ] ]