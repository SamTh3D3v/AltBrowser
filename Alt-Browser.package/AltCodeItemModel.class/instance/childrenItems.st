accessing
childrenItems
	"When retrieving the items to build the children nodes, give them the ability to filter themselves according to the environment."

	^ (item contents collect: [ :e | e asPerRBEnvironment: self rbEnvironment ]) reject: [ :e | e isNil ]