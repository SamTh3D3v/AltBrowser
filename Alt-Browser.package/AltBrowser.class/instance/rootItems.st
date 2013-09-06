accessing
rootItems
	"We may have to filter the roots here; by default all the roots will be shown. And it's not possible to filter them in the GUI."
	
	"If they are filtered here, is it possible to re-add them when appropriate?"

	^ rootItems
		ifNil: [ rootItems := self class rootItems ]