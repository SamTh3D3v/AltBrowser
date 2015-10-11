actions
buildMenu: aMenu
	self item
		buildTreeMenu: aMenu
		on: self model treeMorph
		with: self model