private
projectVersionSpec
	^ (self projectRegistration
		ifNil: [ self itemClass ifNil: [ #() ] ifNotNil: [:c | c project versions ] ]
		ifNotNil: [ :pr | Array with: pr projectSpec version ])
		collect: [ :e | e spec ]