*alt-browser
removeItem: aNode
	"Bug here. Link from previous sibling is kept, which is problematic. Ok, it seems a IndentingListItemMorph does not really have a way of deleting itself. Has PluggableTreeMorph anything relevant ? No, apart from changing the selection. recursiveDelete may well be a non working code in fact."

	"Should use something like noteRemovalOfAll: aCollection."

	| found previousSibling |
	found := self findItem: aNode.
	previousSibling := self findPreviousSibling: found.
	found isNil
		ifFalse: [ 
			| toRemove |
			previousSibling isNil
				ifFalse: [ previousSibling nextSibling: found nextSibling ].
			toRemove := OrderedCollection new.
			found recursiveAddTo: toRemove.
			container noteRemovalOfAll: toRemove.
			toRemove do: [ :each | each delete ].
			container adjustSubmorphPositions ].
	^ found