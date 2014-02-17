execution
execute
	"Move to that place. Can only be called if enabled."

	| tClass tClassNode tMethodNode |
	tClass := self findTargetClass.
	self assert: tClass notNil.
	(AltBrowser rootItems anySatisfy: [ :each | (tClassNode := each findClass: tClass) notNil ])
		ifFalse: [ ^ self ].
	tMethodNode := tClassNode findMethod: requestor selectedNode item item in: tClass.
	requestor selectPathForAbstractItem: tMethodNode