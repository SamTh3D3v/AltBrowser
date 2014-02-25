accessing
contents
	contents ifNil: [ contents := (self parentNode item selectorsInProtocol: self item) asSortedCollection
		collect: [ :each | AltMethodNode with: each parent: self ]].
	^ contents