testing
testCArleast5
	"Test the CA array rleast search."

	| var r a v p |
	var := JExampleArray new: 31.
	r := Random new.
	1 to: var size do: [:i | var at: i put: (r next * 15) rounded].
	a := var rleast: 5.
	v := a first.
	p := a last.
	1 to: v size
		do: 
			[:i | 
			i + 1 to: v size
				do: 
					[:j | 
					self assert: (v at: i) <= (v at: j).
					(v at: i) = (v at: j) ifTrue: [self assert: (p at: i) < (p at: j)]].
			self assert: (var at: (p at: i)) = (v at: i)].
	1 to: var size - 1
		do: [:i | (var at: i) < v last ifTrue: [self assert: (p includes: i)]].