commands
buildTreeShortcutsOn: aKMDispatcher for: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(self
		pragmas: #treeAreaCommand
		from: item class
		to: AbstractEyeElement)
		do: [ :e | 
			(item perform: e selector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor treeMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aKMDispatcher ] ] ]