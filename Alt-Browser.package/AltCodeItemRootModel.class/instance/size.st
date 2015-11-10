tree accessing
size
	"The size of the tree with us at the origin."

	^ self contents inject: 0 into: [ :sum :each | sum + each size ]