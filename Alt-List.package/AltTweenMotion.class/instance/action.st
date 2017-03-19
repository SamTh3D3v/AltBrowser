accessing
action
	"Action is a block."

	^ action ifNil: [ action := [ :v |  ] ]