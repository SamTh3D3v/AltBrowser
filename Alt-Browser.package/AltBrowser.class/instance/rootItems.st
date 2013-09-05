accessing
rootItems
	"We may have to filter the roots here; by default all the roots will be shown."

	^ rootItems
		ifNil: [ rootItems := self class rootItems ]