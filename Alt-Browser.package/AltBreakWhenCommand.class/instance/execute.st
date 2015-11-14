execution
execute
	"Reuse smart suggestion code."

	self assert: astNode hasMetalink not.
	(UIManager default request: 'Break on what condition?')
		ifNotNil:
			[ :condition | (Breakpoint in: astNode) when: {(OpalCompiler evaluate: condition)} ]