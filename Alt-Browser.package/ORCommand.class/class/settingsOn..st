settings
settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #promptOnRefactoring)
		target: self;
		parentName: #refactoring;
		label: 'Prompt on refactoring';
		description: 'Show the changes before applying a refactoring'