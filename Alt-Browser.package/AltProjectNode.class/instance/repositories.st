accessing
repositories
	"Retrieve all repositories from all packages."

	| repositories |
	repositories := Set new.
	self contents
		do: [ :e | 
			repositories
				addAll:
					(e mcWorkingCopy repositoryGroup repositories
						reject: [ :r | r isCache ]) ].
	^ repositories asArray