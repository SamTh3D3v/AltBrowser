execution
execute
	| message className classToRemove result |
	requestor okToChange
		ifFalse: [ ^ false ].
	classToRemove := requestor selectedNode item item
		ifNil: [ 
			Beeper beep.
			^ nil ].
	classToRemove := classToRemove theNonMetaClass.
	className := classToRemove name.
	message := 'Are you certain that you
want to REMOVE the class ' , className
		,
			'
from the system?'.
	(result := self confirm: message)
		ifTrue: [ 
			classToRemove subclasses size > 0
				ifTrue: [ 
					(self confirm: 'class has subclasses: ' , message)
						ifFalse: [ ^ nil ] ].
			classToRemove removeFromSystem.
			true ].
	^ nil