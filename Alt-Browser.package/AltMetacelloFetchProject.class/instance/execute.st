execution
execute
	| item mt |
	item := requestor selectedNode item.
	mt := Metacello new.
	item isBaseline
		ifTrue: [ mt baseline: item projectName ].
	item isConfiguration
		ifTrue: [ mt configuration: item projectName ].
	mt repository: item repositories.
	mt fetch