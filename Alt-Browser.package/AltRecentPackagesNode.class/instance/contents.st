accessing
contents
	^ contents
		ifNil: [ contents := self item
				collect: [ :each | AltPackageLinkNode with: each value parent: self ] ]