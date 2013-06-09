private
uiCancellationError
	"The user pressed Cancel or there were nothing to ask for. The error must be catched by #execute in order to cancel the action."

	"^ ORUICancellationError signal"self halt