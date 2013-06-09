resources
tearDown
	"Remove our testing class and category."

	browser close.
	browser release.
	(Smalltalk at: #AltTestingClass) removeFromSystem.
	Smalltalk globals organization removeCategory: 'Alt-Testing-Underway'