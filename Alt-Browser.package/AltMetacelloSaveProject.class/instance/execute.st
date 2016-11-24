execution
execute
	"Get versions."

	| versions repositories |
	self halt.
	repositories := requestor selectedNode item projectRegistration
		projectSpec repositories list
		collect: [ :r | r spec createRepository ].
	versions := requestor selectedNode item contents
		collect: [ :e | e mcWorkingCopy newVersionIn: repositories first ].
	repositories
		do: [ :e | 
			(e respondsTo: #storeVersions:)
				ifFalse: [ versions do: [ :v | e storeVersion: v ] ]
				ifTrue: [ e storeVersions: versions ] ]