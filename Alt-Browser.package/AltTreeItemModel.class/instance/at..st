tree accessing
at: anIndex
	"Return a specific element."

	^ self
		at: anIndex
		ifAbsent: [ SubscriptOutOfBounds signalFor: anIndex ]