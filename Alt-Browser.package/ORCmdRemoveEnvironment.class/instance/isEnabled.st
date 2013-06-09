testing
isEnabled
	^ super isEnabled and: [ SavedEnvironments notEmpty ]