accessing
contents
	item value isEmpty
		ifTrue: [ item value addAll: self buildValues ].
	contents
		ifNil: [ contents := self item value
				collect: [ :a | AltPackageNode with: a parent: self ] ].
	^ contents