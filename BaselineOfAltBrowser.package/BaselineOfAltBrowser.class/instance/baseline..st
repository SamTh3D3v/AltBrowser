baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Alt-Browser';
				group: 'default' with: #('Alt-Browser') ]
