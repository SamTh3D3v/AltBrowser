accessing
label
	self getItem projectRegistration
		ifNil: [ ^ 'Save project' ]
		ifNotNil:
			[ :r | ^ 'Save project to ' , (r repositoryDescriptions first contractTo: 20) ]