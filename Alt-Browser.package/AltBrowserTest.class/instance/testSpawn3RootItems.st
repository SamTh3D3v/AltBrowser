tests
testSpawn3RootItems
	AltBrowser getRootItems do: [ :e | e contents do: [ :f | f contents do: [ :g | g contents ] ] ]