execution
execute
	"Strange, but convenient, to see that systemNavigation is defined for every object."

	| class |
	class := requestor selectedNode item itemClass theNonMetaClass ifNil: [ ^ self ].
	class isTrait
		ifTrue: [ self systemNavigation browseAllUsersOfTrait: class ]
		ifFalse: [ self systemNavigation browseAllCallsOnClass: class ]