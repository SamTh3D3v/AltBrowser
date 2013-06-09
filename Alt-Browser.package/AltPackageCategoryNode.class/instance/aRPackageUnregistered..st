updating
aRPackageUnregistered: anEvent
	^ self contents inject: false into: [ :bool :each | (each aRPackageUnregistered: anEvent) or: [ bool ] ]