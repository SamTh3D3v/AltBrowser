updating
aMethodRecategorized: anEvent
	"Pass through to childrens."

	"If this is the addition of a method as an extension of this package without any extensions yet, then we need to create the extension object (i.e. rebuild ourselves)."

	| sub |
	sub := self contents inject: false into: [ :bool :each | (each aMethodRecategorized: anEvent) or: [ bool ] ].
	((self rpackage isYourClassExtension: anEvent newProtocol)
		or: [ self rpackage isYourClassExtension: anEvent oldProtocol ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ sub