*alt-browser-override
updateChildren
	self
		childrenDo: [ :child | 
			child parent: self.
			child bounds: child fullBounds ]
