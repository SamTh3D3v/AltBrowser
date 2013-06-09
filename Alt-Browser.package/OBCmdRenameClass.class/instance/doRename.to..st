private
doRename: oldName to: newName
	target theNonMetaClass environment
		renameClassNamed: oldName
		as: newName.
	target announceChangedWith: requestor announcer