drag and drop
dropItem: anItem
	"Either change a method protocol or copy a method from one class to another. In fact, recompiling the method whatever the context should give us the correct result."

	self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil.
	^ self