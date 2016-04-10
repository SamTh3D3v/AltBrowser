private
doItReceiver

	^ requestor selectedNode sourceClass
		ifNil: [ nil ]
		ifNotNil: [:class | class theNonMetaClass ]