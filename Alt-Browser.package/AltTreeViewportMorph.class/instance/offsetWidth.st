accessing
offsetWidth
	^ offsetWidth ifNil: [ offsetWidth := self width ]