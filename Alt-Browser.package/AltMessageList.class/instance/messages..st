accessing-message list
messages: aListOfMethods
	"Stupid message list tools API"

	rbEnvironment := RBSelectorEnvironment
		onEnvironment: self rbEnvironment.
	aListOfMethods do: [ :e | rbEnvironment addMethod: e ]