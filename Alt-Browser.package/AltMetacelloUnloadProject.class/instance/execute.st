execution
execute
	"Unload all those packages."

	(self getItem contents collect: [ :e | e mcWorkingCopy ])
		reverseDo: [ :e | e unload ]