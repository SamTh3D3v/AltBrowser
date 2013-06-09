actions
accept: aText
	"Compile the method."

	self sourceClass compile: aText classified: self methodCategory notifying: nil