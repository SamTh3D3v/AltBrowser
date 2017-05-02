accessing
contents
	(item value isEmpty
		and: [ (Smalltalk at: item key ifAbsent: [  ]) notNil ])
		ifTrue: [ item value addAll: self buildValues ].
	contents
		ifNil: [ contents := self item value
				collect: [ :a | AltPackageNode with: a parent: self ] ].
	^ contents