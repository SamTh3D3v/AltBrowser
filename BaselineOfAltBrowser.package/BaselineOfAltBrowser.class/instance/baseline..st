baseline
baseline: spec
	<baseline>
	spec
		package: 'Al-TreeMorph';
		package: 'Alt-Browser' with: [ spec requires: 'Al-TreeMorph' ];
		group: 'default' with: #('Alt-Browser');
		group: 'AltBrowser' with: ('Alt-Browser')