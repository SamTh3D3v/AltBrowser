settings
altBrowserSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #AltBrowser)
		label: 'AltBrowser' translated;
		description: 'Alt Browser settings' translated;
		with: [ 
					(aBuilder nodeClass: AltSettingDeclaration name: #debug)
						label: 'Show debug menu items' translated;
						target: self;
						description:
								'If checked three debug menu items are added to the tree menu to be able to inspect a node of the tree, rebuilt it and, in case of a method, inspect its AST tree.'
										translated.
					(aBuilder nodeClass: AltSettingDeclaration name: #default)
						label: 'Set as default browser' translated;
						target: #SystemBrowser;
						description: 'To work around a settings bug, add this setting with a correct action.' translated ]