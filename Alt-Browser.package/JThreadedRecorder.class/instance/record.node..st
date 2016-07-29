execution graph
record: aSelector node: n
	"Record a selector with it's source position, to relate to the original source in a browser."

	| r |
	self context: n.
	r := JRecordItem new 
				selector: aSelector
				node: n.
	self current children isEmpty 
		ifFalse: 
			[(self current children last isMethod 
				and: [self current children last selector == r selector]) 
					ifTrue: 
						[| t |
						t := self current children removeLast.
						r children add: t]].
	self current children add: r