accessing
doItReceiver

	^ requestor selectedItem sourceClass
		ifNil: [ nil ]
		ifNotNil: [:class | class theNonMetaClass ]