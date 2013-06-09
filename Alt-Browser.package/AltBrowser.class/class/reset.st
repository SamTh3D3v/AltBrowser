private
reset
	"reset the rootItems. Should propagate to all instances as well."
	
	"AltBrowser reset"

	rootItems := nil.
	self allInstances do: [ :e | e reset ]