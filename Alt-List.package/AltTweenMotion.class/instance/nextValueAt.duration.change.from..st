private
nextValueAt: msSinceStart duration: msTotalTime change: valueChange from: initialValue
	"Trying to document clearly the protocol used by the tween block!"

	^ self tween
		value: msSinceStart
		value: msTotalTime
		value: valueChange
		value: initialValue