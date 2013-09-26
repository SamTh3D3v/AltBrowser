execution
execute
	"Execute an all senders of."

	(AltBrowser
		fullOnEnvironment:
			(requestor rbEnvironment referencesTo: requestor selectedNode item item)) expandAllNodes