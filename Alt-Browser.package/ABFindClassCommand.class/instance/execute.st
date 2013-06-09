execution
execute
	| aClass |
	aClass := SearchFacade classSearch chooseFromOwner: requestor window window.
	aClass explore
