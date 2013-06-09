testing
isEnabled
	^ super isEnabled and: [ super environment isSystem not and: [ SavedEnvironments notEmpty ] ]