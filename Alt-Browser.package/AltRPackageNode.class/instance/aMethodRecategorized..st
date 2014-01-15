updating
aMethodRecategorized: anEvent
	"Pass through to childrens."

	"If this is the addition of a method as an extension of this package without any extensions yet, then we need to create the extension object (i.e. rebuild ourselves)."

	| sub rpackage |
	sub := self contents inject: false into: [ :bool :each | (each aMethodRecategorized: anEvent) or: [ bool ] ].
	rpackage := self item packageSet packages first.
	((rpackage isYourClassExtension: anEvent newProtocol) or: [ rpackage isYourClassExtension: anEvent oldProtocol ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ sub