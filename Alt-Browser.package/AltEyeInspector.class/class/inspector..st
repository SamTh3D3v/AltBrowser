inspecting
inspector: anObject
	^ anObject class altInspectorClass new
		inspect: anObject;
		yourself