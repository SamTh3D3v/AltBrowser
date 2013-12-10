event handling
keyStroke: evt
	"This is hugely inefficient, but it seems to work, and it's unlikely it will ever need
	to be any more efficient -- I like the way the editor is being managed."

	| char priorEditor newSel |
	((char := evt keyCharacter) = Character enter
		or: [ char = Character cr or: [ char = Character escape or: [ char = $s and: [ evt commandKeyPressed ] ] ] ])
		ifTrue: [ 
			evt hand releaseKeyboardFocus.
			^ self delete ].
	(char = $l and: [ evt commandKeyPressed ])
		ifTrue: [ 
			"cancel"
			evt hand releaseKeyboardFocus.
			^ self delete ].
	super keyStroke: evt.
	newSel := self editor selectionInterval.
	priorEditor := self editor.	"Save editor state"
	self releaseParagraph.	"Release paragraph so it will grow with selection."
	self paragraph.	"Re-instantiate to set new bounds"
	self installEditorToReplace: priorEditor.	"restore editor state"
	self editor selectFrom: newSel first to: newSel last