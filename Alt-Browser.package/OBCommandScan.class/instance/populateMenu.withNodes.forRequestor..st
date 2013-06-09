user interface
populateMenu: aMenu withNodes: aCollection forRequestor: aRequestor 
	| commands cluster |
	commands := IdentitySet new.
	aCollection do: 
		[ :node | 
		self 
			addCommandsOn: node
			for: aRequestor
			to: commands ].
	cluster := self clusterCommands: commands.
	cluster populateMenu: aMenu