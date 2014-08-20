baseline
baseline: spec
	<baseline>
	spec
		package: 'Al-TreeMorph';
		package: 'AltBrowser' with: [ spec requires: 'Al-TreeMorph' ];
		group: 'default' with: #('AltBrowser')