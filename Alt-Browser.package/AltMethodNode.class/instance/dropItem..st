drag and drop
dropItem: anItem
	"Either change a method protocol or copy a method from one class to another."

	self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil.
	^ self parent findMethod: anItem selector in: self sourceClass