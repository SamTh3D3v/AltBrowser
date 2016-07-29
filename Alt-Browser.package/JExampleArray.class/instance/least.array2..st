actions
least: anArray1 array2: anArray2 
	"Sort the two arrays into one. May have one array smaller than the other. Arrays are sorted, so the algorithm is simplified."

	| sz v p i j k a1 a2 p1 p2 |
	a1 := anArray1 first.
	p1 := anArray1 last.
	a2 := anArray2 first.
	p2 := anArray2 last.
	sz := a1 size max: a2 size.
	v := Array new: sz.
	p := Array new: sz.
	i := 1.
	j := 1.
	k := 1.
	[k <= sz] whileTrue: 
			[(i > a1 size or: [j <= a2 size and: [(a2 at: j) < (a1 at: i)]]) 
				ifTrue: 
					[v at: k put: (a2 at: j).
					p at: k put: (p2 at: j).
					j := j + 1.
					k := k + 1]
				ifFalse: 
					[v at: k put: (a1 at: i).
					p at: k put: (p1 at: i).
					k := k + 1.
					i := i + 1]].
	^Array with: v with: p