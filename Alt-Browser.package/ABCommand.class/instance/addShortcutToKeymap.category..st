user interface
addShortcutToKeymap: aKMBuilder category: aCategoryName
	"Add a shortcut to the keymap. Not sure about what the category should be."
	
	(aKMBuilder shortcut: self class name) category: aCategoryName default: self keystroke do: [:t | self execute] 