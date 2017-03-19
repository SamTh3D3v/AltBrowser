code manipulation
analyse: aMethodSelector in: aClass
	"Instrument a method, store the original. Has provisions for looking in the
	class hierarchy, but, for now, the uninstall will copy the method in the subclass."

	"Currently, this does not keep the original source. I'd like to keep it, how should this be done? I'll ask."

	| n cm class method s |
	method := aClass lookupSelector: aMethodSelector.
	class := method methodClass.
	class isNil
		ifTrue: [ ^ self ].
	(JInstrumentedMethods includesKey: (Array with: class with: aMethodSelector))
		ifTrue: [ 
			ExampleBuilderMorph new alert: 'Method already instrumented.'.
			^ self ].
	mclass := class.
	s := method getSource.
	n := RBParser parseMethod: s.
	n := self visitNode: n.
	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ 
			cm := class lookupSelector: (class compile: n formattedCode classified: method category notifying: nil).
			self changeLiteralRecorder: #JCollecteur to: JCollecteur recorder in: cm.
			JInstrumentedMethods at: (Array with: class with: aMethodSelector) put: method ]