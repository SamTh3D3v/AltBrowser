initialize-release
reset
	stack first setChildren: nil.
	[stack size > 1] whileTrue: [stack removeLast]