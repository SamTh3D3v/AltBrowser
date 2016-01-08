accessing
watchpoints
	^ Watchpoint allWatchpoints values
		select:
			[ :e | 
			e compiledMethod methodClass == self itemClass
				and: [ e compiledMethod == (self itemClass >> e compiledMethod selector) ] ]