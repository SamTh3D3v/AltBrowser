baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Al-TreeMorph';
				package: 'Alt-Browser' with: [ spec requires: 'Al-TreeMorph' ];
				group: 'default' with: #('Alt-Browser');
				group: 'AltBrowser' with: 'Alt-Browser' ]