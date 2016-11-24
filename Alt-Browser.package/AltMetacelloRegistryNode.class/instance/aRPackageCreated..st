updating
aRPackageCreated: anEvent
	^ self contents inject: false into: [ :bool :each | (each aRPackageCreated: anEvent) or: [ bool ] ]