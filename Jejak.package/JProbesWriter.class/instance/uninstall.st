code manipulation
uninstall
	"Go through the originals and reinstate them."

	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ JInstrumentedMethods keysAndValuesDo: [ :key :value | key first addSelector: key last withMethod: value ] ].
	JInstrumentedMethods reset