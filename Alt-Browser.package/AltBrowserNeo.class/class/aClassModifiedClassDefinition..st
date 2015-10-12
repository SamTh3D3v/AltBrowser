updating
aClassModifiedClassDefinition: anEvent
	"Take in account this event."

	[ self root aClassModifiedClassDefinition: anEvent ] forkAt: Processor activeProcess priority - 1.
	Processor yield