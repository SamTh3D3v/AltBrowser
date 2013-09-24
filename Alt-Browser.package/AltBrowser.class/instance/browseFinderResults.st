user actions
browseFinderResults
	"The finder interface has given us a result. Open a browser on it."

	| environment |
	self assert: finder notNil.
	environment := RBSelectorEnvironment onEnvironment: self rbEnvironment.
	finder resultDictionary
		keysAndValuesDo: [ :aSelector :classes | classes do: [ :aClass | environment addClass: aClass selector: aSelector ] ].
	(AltBrowser fullOnEnvironment: environment) treeMorph expandAll