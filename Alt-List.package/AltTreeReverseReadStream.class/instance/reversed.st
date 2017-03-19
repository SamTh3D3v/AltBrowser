accessing
reversed
	"Would that work? Just reverse all the stack items one by one."

	| reversed |
	reversed := AltTreeReadStream new.
	reversed setCollection: self collection.
	reversed
		stack:
			(self stack
				collect: [ :e | 
					(ReadStream on: e contents reversed)
						skip: e contents size - e position ]).
	^ reversed