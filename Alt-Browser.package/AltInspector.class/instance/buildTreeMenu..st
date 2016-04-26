shortcuts
buildTreeMenu: aMenu
	"The default tree menu."

	self selectedItem buildTreeMenu: aMenu on: treeMorph for: self.
	^ aMenu