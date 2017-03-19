profiling
overheadTraceRecordingCArleast5
	"Tracing overhead with events recording on the array least5 search."

	"JTests new overheadTraceRecordingCArleast5"

	| var r |
	var := JExampleArray new: 31.
	r := Random new.
	1 to: var size do: [ :i | var at: i put: (r next * 15) rounded ].
	TimeProfiler onBlock: [ 10000 timesRepeat: [ var rleast: 5 ] ].
	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:) do: [ :e | JCFGProbesWriter analyse: e in: JExampleArray ].
	TimeProfiler
		onBlock: [ 
			10000
				timesRepeat: [ 
					var rleast: 5.
					JCollecteur recorder reset ] ].
	JProbesWriter uninstall.
	JCollecteur recorder: JRecorder new