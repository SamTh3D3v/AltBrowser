private
nodeDetect: aBlock ifNone: aNoneBlock
	"The base search technique for matching nodes. Take the node list, start the search one morph after the selection, loop to beginning if needed."

	| searchList |
	searchList := baseIndex
		ifNil:
			[ requestor selectedRowIndex
				ifNil: [ requestor model ]
				ifNotNil:
					[ :sel | 
					(requestor model allButFirst: sel)
						, (requestor model first: sel) ] ]
		ifNotNil:
			[ :i | (requestor model allButFirst: i - 1) , (requestor model first: i - 1) ].
	^ searchList detect: aBlock ifNone: aNoneBlock