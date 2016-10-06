execution
execute
	| result rcvr methodNode aCompiledMethod guineaPig context debugSession |
	rcvr := requestor selectedNode doItReceiver.
	methodNode := rcvr class compiler
		source: (ReadStream on: target trueSelection);
		class: rcvr class;
		context: nil;
		requestor: target;
		noPattern: true;
		failBlock: [ ^ nil ];
		translate.
	aCompiledMethod := methodNode generateWithSource.
	guineaPig := [ aCompiledMethod valueWithReceiver: rcvr arguments: #() ]
		newProcess.
	context := guineaPig suspendedContext.
	debugSession := guineaPig
		newDebugSessionNamed: 'debug it'
		startedAt: context.
	debugSession
		stepIntoUntil: [ :currentContext | currentContext method == aCompiledMethod ].
	Smalltalk tools debugger openOn: debugSession withFullView: true