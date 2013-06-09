execution
execute
	| class |
	class := self requestClassToUser.
	class isNil ifFalse: [ 
		self 
			select: class asNode
			with: requestor announcer ]