execution
execute
	| result printString oldEditor selectionInterval |
	target textMorph
		handleEdit: [ oldEditor := target textMorph editor.
			result := super execute.
			printString := [ result printString ]
				on: Error
				do: [ '<error in printString: try ''Inspect it'' to debug>' ].
			selectionInterval := oldEditor selectionInterval.
			target textMorph installEditorToReplace: oldEditor.
			target textMorph
				handleEdit: [ oldEditor afterSelectionInsertAndSelect: printString ].
			selectionInterval := oldEditor selectionInterval.
			target textMorph editor
				selectFrom: selectionInterval first
				to: selectionInterval last.
			target scrollSelectionIntoView ]