execution
execute
	"Strange, but convenient, to see that systemNavigation is defined for every object."

	| class |
	class := requestor selectedNode item item theNonMetaClass ifNil: [ ^ self ].
	self systemNavigation browseHierarchy: class