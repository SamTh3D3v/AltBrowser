actions
reorder: anArray 
	"Reorder all elements of this array in a new Array, recording the positions. This is a building block to be able to then do the sort of the five smallest values."

	| sz p v |
	sz := anArray size.
	v := Array new: sz.
	p := Array new: sz.
	v at: 1 put: (anArray at: 1).
	p at: 1 put: 1.
	2 to: sz
		do: 
			[:i | 
			| valeur j |
			valeur := anArray at: i.
			j := 1.
			[j < i] whileTrue: 
					[valeur < (v at: j) 
						ifTrue: 
							[i to: j + 1
								by: -1
								do: 
									[:k | 
									v at: k put: (v at: k - 1).
									p at: k put: (p at: k - 1)].
							v at: j put: valeur.
							p at: j put: i.
							j := sz + 1]
						ifFalse: [j := j + 1]].
			j = i 
				ifTrue: 
					[v at: i put: valeur.
					p at: i put: i]].
	^Array with: v with: p