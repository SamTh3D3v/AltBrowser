execution
execute
	"Treat the current selection as an expression; evaluate it."

	| result rcvr ctxt |
	(requestor selectedItem item respondsTo: #doItReceiver)
		ifTrue: [ 
			rcvr := requestor selectedItem item doItReceiver.
			ctxt := requestor selectedItem item doItContext ]
		ifFalse: [ rcvr := ctxt := nil ].
	result := [ 
	rcvr class evaluatorClass new
		evaluate: (ReadStream on: target widget trueSelection)
		in: ctxt
		to: rcvr
		notifying: target widget
		ifFail: [ 
			target widget flash.
			^ nil ]
		logged: true	"don't set it to self.. The receiver can be destroyed as a result of evaluateSelection" ]
		on: OutOfScopeNotification
		do: [ :ex | ex resume: true ].
	^ result