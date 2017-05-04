private
projectVersionSpec
	"We need to be protected from potentially incomplete project metadata."

	^ [ (self itemClass
		ifNil: [ #() ]
		ifNotNil: [ :c | c project versions ]) collect: [ :e | e spec ] ]
		on: Error
		do: [:e | #() ]