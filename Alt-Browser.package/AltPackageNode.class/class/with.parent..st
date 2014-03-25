instance creation
with: aPackageName parent: aNode
	"Check that we don't need to return the unpackaged node."

	aPackageName = RPackage defaultPackageName
		ifTrue: [ ^ AltUnpackagedNode with: aPackageName parent: aNode ].
	^ super with: aPackageName parent: aNode