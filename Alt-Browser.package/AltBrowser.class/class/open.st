spec
open
	"AltBrowser open. Make sure that, in the absence of selections, we set the tree keymap."

	| n |
	(n := AltBrowser new) openWithSpec.
	n treeModel updateKeymap.
	^ n