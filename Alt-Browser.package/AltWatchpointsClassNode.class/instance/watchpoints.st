accessing
watchpoints
	^ Watchpoint allWatchpoints values
		select: [ :e | e compiledMethod methodClass == self itemClass ]