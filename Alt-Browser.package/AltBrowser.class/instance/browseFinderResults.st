user actions
browseFinderResults
	"The finder interface has given us a result. Open a browser on it."

	| environment |
	self assert: finder notNil.
	environment := RBSelectorEnvironment onEnvironment: self rbEnvironment.
	finder resultDictionary
		keysAndValuesDo: [ :aSelector :classes | 
			classes isDictionary
				ifTrue: [ 
					classes
						keysAndValuesDo: [ :aSelector2 :classes2 | classes2 do: [ :aClass | environment addClass: aClass selector: aSelector2 ] ] ]
				ifFalse: [ classes do: [ :aClass | environment addClass: aClass selector: aSelector ] ] ].
	(self class fullOnEnvironment: environment) expandAllNodes