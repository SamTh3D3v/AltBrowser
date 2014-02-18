An AltCommand is in charge of preparing and executing commands on the Alt Browser.

Instance Variables
	requestor:	<Object>	The object sending the command. In my case, the AltBrowser instance.
	target:		<Object>	The target (where the command is applied): the textModel usually (or the treeModel for tree related commands ?)