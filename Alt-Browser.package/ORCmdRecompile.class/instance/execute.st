execution
execute
	OBWaitRequest block: [
		self environment classesAndSelectorsDo: [ :class :selector |
			class recompile: selector from: class ] ]