updating
aMCWorkingCopyDeleted: anEvent
	"If one of our children say yes, rebuilt ourselves! Property we use here: a MCWorkingCopy is unique in a package category. Remember that."

	"Note: we will have to remove from this node items only if the MCWorkingCopy was stored at that level. This is checked by the double call to aMCWorkingCopyDeleted: which will only answer true the second time if node is the AltPackageNode for the MCWorkingCopy."

	"Here, on a delete, we should also delete ourselves if we contain just one element (and move that element up)."

	(self contents detect: [ :each | each aMCWorkingCopyDeleted: anEvent ] ifNone: [ nil ])
		ifNotNil: [ :node | 
			((node aMCWorkingCopyDeleted: anEvent) and: [ self code value includes: node code ])
				ifTrue: [ 
					self removeRPackage: node packageName.
					self code value size = 1
						ifTrue: [ 
							| nodeLeft |
							nodeLeft := self code value first.
							self parent
								ifNil: [ AltBrowser aNodeToRebuilt: self ]
								ifNotNil: [ :pNode | 
									pNode removeRPackage: self code.
									pNode addRPackage: nodeLeft.
									AltBrowser aNodeToRebuilt: pNode ] ]
						ifFalse: [ AltBrowser aNodeToRebuilt: self ] ].
			^ true ].
	^ false