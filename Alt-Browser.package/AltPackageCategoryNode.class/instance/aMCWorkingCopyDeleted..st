updating
aMCWorkingCopyDeleted: anEvent
	"If one of our children say yes, rebuilt ourselves! Property we use here: a MCWorkingCopy is unique in a package category. Remember that."

	"Note: we will have to remove from this node items only if the MCWorkingCopy was stored at that level. This is checked by the double call to aMCWorkingCopyDeleted: which will only answer true if node is the AltPackageCategoryNode for the MCWorkingCopy."

	(self contents detect: [ :each | each aMCWorkingCopyDeleted: anEvent ] ifNone: [ nil ])
		ifNotNil: [ :node | 
			(node aMCWorkingCopyDeleted: anEvent)
				ifTrue: [ 
					self removeRPackage: node packageName.
					AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ false