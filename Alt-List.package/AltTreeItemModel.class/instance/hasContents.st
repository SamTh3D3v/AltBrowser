testing
hasContents
	"Review this test."

	^ (contents notNil and: [ contents notEmpty ])
		or: [ self childrenItems notEmpty ]