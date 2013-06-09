testing
isActive
	^ target hasOrganization and: [ (requestor isSelected: target) not ]