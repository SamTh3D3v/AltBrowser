accessing
root
	^ Root ifNil: [ Root := AltRootNode with: #root -> self getRootItems ]