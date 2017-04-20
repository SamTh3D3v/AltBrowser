private
projectVersionSpec
	^ (self projectRegistration
		ifNil: [ self itemClass project versions ]
		ifNotNil: [ :pr | Array with: pr projectSpec version ])
		collect: [ :e | e spec ]