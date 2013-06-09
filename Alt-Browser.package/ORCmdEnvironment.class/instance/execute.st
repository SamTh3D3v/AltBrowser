execution
execute
	"[ "self openEnvironment: self environment" ] 
		on: ORUICancellationError
		do: [ :err | ^ self ]"