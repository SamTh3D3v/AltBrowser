execution
execute
	| newName oldName |
	newName := OBTextRequest 
		prompt: 'Please type new class name'
		template: target theNonMetaClassName asString.
	newName isNil ifTrue: [ ^ self ].
	oldName := target theNonMetaClass name.
	self doRename: oldName to: newName asSymbol.
	self browseObsoleteRefs: target copy as: oldName