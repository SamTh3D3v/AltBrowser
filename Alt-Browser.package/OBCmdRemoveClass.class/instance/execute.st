execution
execute
	(OBConfirmationRequest 
		prompt: 'Are you certain that you want to remove the class ' , target theNonMetaClassName , ' from the system?'
		confirm: 'Remove') 
			ifFalse: [ ^ self ].
	self doRemove