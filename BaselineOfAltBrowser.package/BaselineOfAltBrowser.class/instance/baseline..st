baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Alt-Browser';
				package: 'Jejak';
				group: 'default' with: #('Alt-Browser' 'Jejak') ]
