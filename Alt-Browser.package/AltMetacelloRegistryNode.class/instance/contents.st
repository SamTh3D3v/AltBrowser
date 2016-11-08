accessing
contents
	^ contents
		ifNil: [ contents := self item
				collect: [ :each | AltMetacelloProjectNode with: each value parent: self ] ]