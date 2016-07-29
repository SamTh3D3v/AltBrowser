actions
rleast: k 
	"Recursive least k elements on anArray. If the array is k in length or less, return it ordered. Else, divide."

	| n a1 a2 ml |
	n := ((self size + k - 1) / k) truncated.
	n == 1 ifTrue: [^self reorder: self].
	ml := (n / 2) truncated * k.
	a1 := (self copyFrom: 1 to: ml) rleast: k.
	a2 := (self copyFrom: ml + 1 to: self size) rleast: k.
	a2 at: 2 put: (a2 last collect: [:p | p + ml]).
	^self least: a1 array2: a2