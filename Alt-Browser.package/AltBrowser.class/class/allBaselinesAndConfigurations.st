private
allBaselinesAndConfigurations
	^ MCWorkingCopy allManagers
		select: [ :e | 
			(e packageName beginsWith: 'BaselineOf')
				or: [ e packageName beginsWith: 'ConfigurationOf' ] ]