execution
execute
	"Reuse smart suggestion code."

	astNode hasMetalink
		ifFalse: [ (Breakpoint in: astNode) always ]
		ifTrue: [ Breakpoint removeFrom: astNode ]