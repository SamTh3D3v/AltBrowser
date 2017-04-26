testing
isEnabled
	^ self getItem projectRegistration notNil
		and: [ self getItem isBaseline ]