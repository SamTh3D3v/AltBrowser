updating
aClassRedefined: anEvent
	"A method has changed. Check if this is the one we are selecting; if yes, update the display."

	"Note the fork and the yield: this is to force to wait for the redefinition to be effective. When we receive the event, the redefinition of the class hasn't taken place yet and so if we query the definition we have the old definition and not the new one."

	(self selectedNode isNil or: [ self selectedNode item isClassNode not ])
		ifTrue: [ ^ self ].
	[ 
	| sItem |
	self selectedNode isNil
		ifFalse: [ 
			sItem := self selectedNode item.
			(sItem isClassNode and: [ sItem itemClass name = anEvent newClassDefinition name ])
				ifTrue: [ source contents: anEvent newClassDefinition definition ] ] ] forkAt: Processor activeProcess priority - 1.
	Processor yield