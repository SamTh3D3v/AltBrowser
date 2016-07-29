code manipulation
changeLiteralRecorder: aSymbolOrObject to: anObject in: aCompiledMethod
	"Change the relevant literal to another object in the method."

	"TODO: ask if this should really be done in Pharo, and how it should be done."

	"Self Answer: it has to be done. The literal is in the method, just need to find and replace it."

	aCompiledMethod literalAt: (aCompiledMethod indexOfLiteral: aSymbolOrObject) put: anObject