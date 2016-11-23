accessing
contents
	^ contents
		ifNil: [ contents := self registrations
				collect:
					[ :each | AltMetacelloProjectNode with: each projectSpec className parent: self ] ]