accessing
contents
	contents ifNil: [ contents := (self parentNode itemClass selectorsInProtocol: self item) asSortedCollection
		collect: [ :each | AltMethodNode with: each parent: self ]].
	^ contents