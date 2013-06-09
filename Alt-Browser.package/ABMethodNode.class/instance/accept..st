actions
accept: aText
	"Compile the method."

	self sourceClass compile: aText classified: self parentNode methodCategory notifying: nil