accessing
gtChildrenItems
	| composite |
	composite := GLMCompositePresentation new.
	(((Pragma
		allNamed: GTInspector extensionsPragma
		from: item value class
		to: Object) reject: [ :e | e selector numArgs ~= 1 ])
		sorted: [ :a :b | a arguments first < b arguments first ])
		do: [ :e | 
			thisContext
				object: item value
				perform: e selector
				withArguments: (Array with: composite)
				inClass: item value class ].
	composite presentations logCr.
	^ composite presentations