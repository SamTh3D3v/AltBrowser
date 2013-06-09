*Alt-Browser
readSelection
	"Return the selection text as remembered by the PluggableTextMoprh, even if not in focus."

	^ textMorph editor text copyFrom: selectionInterval first to: selectionInterval last