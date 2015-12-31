accessing
watchpoints
	^ Watchpoint allWatchpoints
		select: [ :e | e compiledMethod methodClass == self itemClass ]