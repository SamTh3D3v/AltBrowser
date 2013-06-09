accessing
addChild: anItem beforeIndex: index
	"Add a child, but do it according to it's position."

	anItem parentNode: self.
	^ contents add: anItem beforeIndex: index