accessing
contents
	^ contents ifNil: [ contents := self code collect: [ :each | AltPackageLinkNode with: each value parent: self ] ]