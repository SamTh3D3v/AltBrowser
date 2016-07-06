execution
execute
	| guineaPig debugger context rcvr ctxt methodNode aCompiledMethod |
	rcvr := self doItReceiver.
	ctxt := self doItContext.
	methodNode := rcvr class compiler
		source: (ReadStream on: target trueSelection);
		class: rcvr class;
		context: ctxt;
		requestor: target;
		noPattern: true;
		failBlock: [ 
					target flash.
					^ nil ];
		translate.
	aCompiledMethod := methodNode generateWithSource.
	guineaPig := [ aCompiledMethod valueWithReceiver: rcvr arguments: (ctxt ifNil: [ #() ] ifNotNil: [ Array with: ctxt ]) ]
		newProcess.
	context := guineaPig suspendedContext.
	debugger := Smalltalk tools debugger new process: guineaPig controller: nil context: context.
	debugger openFullNoSuspendLabel: 'Debug it'.
	[ debugger interruptedContext method == aCompiledMethod ] whileFalse: [ debugger send ]
