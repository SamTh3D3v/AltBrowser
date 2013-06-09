resources
tearDown
	"Remove our testing class and category."

	browser close.
	browser release.
	(Smalltalk at: #AltTestingClass) removeFromSystem.
	(MCWorkingCopy forPackage: (MCPackage new name: 'Alt-Testing-Underway')) unload.
	Smalltalk globals organization removeCategory: 'Alt-Testing-Underway'