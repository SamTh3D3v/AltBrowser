displaying
displayCleanTraceCArleast5
	"Test tracing on the array."

	"JTests new displayCleanTraceCArleast5"

	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:) 
		do: [:e | JVariableProbesWriter analyse: e in: JExampleArray].
	self testCArleast5.
	JLoopArrange do: JCollecteur recorder elements first value.
	JMethodArrange do: JCollecteur recorder elements first value.
	JViewer open.
	JProbesWriter uninstall.