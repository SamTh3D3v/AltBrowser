execution
execute
	"Get versions and save them, if possible in a single commit. Need to work out that message thing."

	| item versions repositories message |
	item := self getItem.
	repositories := item projectRegistration projectSpec repositories
		list collect: [ :r | r spec createRepository ].
	versions := (item contents select: [ :e | e mcWorkingCopy modified ])
		collect: [ :e | 
			message
				ifNil: [ | v |
					v := e mcWorkingCopy newVersionIn: repositories first.
					v ifNil: [ ^ self ].
					message := v info message.
					v ]
				ifNotNil: [ e mcWorkingCopy
						newVersionWithMessage: message
						in: repositories first ] ].
	repositories
		do: [ :e | 
			(e respondsTo: #storeVersions:)
				ifFalse: [ versions do: [ :v | e storeVersion: v ] ]
				ifTrue: [ e storeVersions: versions ] ]