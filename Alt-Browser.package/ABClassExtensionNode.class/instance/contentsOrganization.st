querying
contentsOrganization
	"Should answer the extension category."

	^ Array with: self methodCategory -> (self contents collect: [ :each | each contentsOrganization ])