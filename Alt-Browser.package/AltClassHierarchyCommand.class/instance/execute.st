execution
execute
	"Per object system navigation looks cool, but in practice it isn't that powerfull or offer any strong benefit."

	| aClass |
	aClass := requestor selectedNode item itemClass theNonMetaClass ifNil: [ ^ self ].
	requestor class
		openOnEnvironment: (requestor rbEnvironment forClasses: {aClass} , aClass allSuperclasses , aClass allSubclasses)
		select: requestor selectedNode item
		with: requestor selectedNode findExpanded