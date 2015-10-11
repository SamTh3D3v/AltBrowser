menu
buildMenu: aMenu
	"Just present a sample menu."

	aMenu add: 'inspect' target: self selector: #inspect.
	^ aMenu