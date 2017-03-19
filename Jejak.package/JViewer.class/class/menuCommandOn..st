user interface
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Trace Viewer')
			parent: #Tools;
			action: [ self open ]; 
			help: 'View / Explore / Reset traces'.