user interface
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Alt Browser')
			parent: #Tools;
			action: [ self open ];
			icon: UITheme current smallSystemBrowserIcon;
			help: 'An Alternative System Browser'.