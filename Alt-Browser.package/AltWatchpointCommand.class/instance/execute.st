execution
execute
	astNode hasWatchpoint
		ifFalse:
			[ (UIManager default request: 'Name for Watchpoint')
				ifNotNil:
					[ :tagname | 
					AltBrowser
						aWatchpointInstalled:
							(AltWatchpointInstalled new
								watchpoint: (Watchpoint in: astNode named: tagname)) ] ]
		ifTrue:
			[ AltBrowser
				aWatchpointUninstalled:
					(AltWatchpointInstalled new
						watchpoint: (Watchpoint allWatchpoints at: astNode)).
			Watchpoint removeFrom: astNode ]