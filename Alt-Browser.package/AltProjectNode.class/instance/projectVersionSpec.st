private
projectVersionSpec
	^ (self itemClass ifNil: [ #() ] ifNotNil: [ :c | c project versions ])
		collect: [ :e | e spec ]