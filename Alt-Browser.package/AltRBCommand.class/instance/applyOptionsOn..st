private
applyOptionsOn: aRefactoringCommand
	"Set options to a refactoring command."

	aRefactoringCommand
		setOption: #openBrowser
		toUse: [ :ref :env | AltBrowser openOnEnvironment: env ]