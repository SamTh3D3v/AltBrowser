execution graph
define: vars node: n
	self addChild: (JRecordVariable new 
				var: vars
				node: n)