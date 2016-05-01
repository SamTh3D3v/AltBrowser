settings
altInspectorSettingsOn: aBuilder
	<systemsettings>
	(aBuilder nodeClass: AltSettingDeclaration name: #defaultInspector)
		label: 'Set as default inspector' translated;
		parent: #AltBrowser;
		target: self;
		description: 'Set AltInspector as the default inspector' translated