accessing
contents
	contents
		ifNil: [ 
			contents := (self parent itemClass selectorsInProtocol: self methodCategory) asSortedCollection
				collect: [ :each | AltMethodNode with: each parent: self ] ].
	^ contents